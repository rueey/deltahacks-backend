Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/api/top_diseases/:session_id/:count', to: 'api#get_diseases'
  get '/api/symptoms/all', to: 'api#get_all_symptoms'
  get '/api/symptoms/:disease_id', to: 'api#get_symptoms'
  put '/api/user/:session_id/update_scores/:symptom_id', to: 'api#update_score_for_disease'
  post '/api/user/create/:session_id', to: 'api#create_user'
end
