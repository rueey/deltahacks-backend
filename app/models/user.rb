class User < ApplicationRecord
  has_many :scores
  has_many :diseases, through: :scores

  def add_to_score(disease_id, past_score, increment)
    scores.find_by(disease: disease_id)
          .update_columns(score: past_score + increment)
  end
end
