# don't see the need for a full crud app (since we're prepopulating db)
# these are the only endpoints we'll ever need to hit

class ApiController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_user, only: [:get_diseases]
  before_action :set_disease, only: [:get_symptoms]
  before_action :permit_update_params, only: [:update_score_for_disease]
  before_action :permit_user_params, only: [:create_user]

  def get_diseases
    render json: @user.diseases.order(score: :desc).limit(params[:count])
  end

  def get_symptoms
    render json: @disease.symptoms
  end

  def get_all_symptoms
    render json: Symptom.all
  end

  def update_score_for_disease
    Score.transaction do
      for entry in @user.scores do
        past_score = entry.score
        @d_id = entry.disease_id
        entry.update_columns(score: past_score +
          (Weight.find_by(disease_id: @d_id, symptom_id: params[:symptom_id])&.weighting || 0))
      end
    end
    render json: :success
  end

  def create_user
    @user = User.find_or_create_by(session_id: params[:session_id]) do |user|
      user.name = params[:name]
      user.bio = params[:bio]
      user.pic_url = params[:pic_url]
    end

    for disease in Disease.all do
      Score.create(user_id: @user.id, disease_id: disease.id, score: 0)
    end

    render json: @user
  end

  private

  # get_diseases

  def permit_sessions_id
    params.permit(:session_id, :count)
  end

  def set_user
    permit_sessions_id
    @user = User.find_by(session_id: params[:session_id])
  end

  # get_symptoms

  def permit_disease_id
    params.require(:disease_id)
  end

  def set_disease
    permit_disease_id
    @disease = Disease.find(params[:disease_id])
  end

  # update_score_for_disease
  
  def permit_update_params
    params.permit(:symptom_id, :session_id)
    @user = User.find_by(session_id: params[:session_id])
  end

  # create_user
  
  def permit_user_params
    params.permit(:session_id, :name, :bio, :pic_url)
  end

end
