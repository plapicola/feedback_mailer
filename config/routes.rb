Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post "/new_survey", to: "new_survey#create", as: :new_survey
      post "/welcome", to: "welcome#create", as: :welcome
    end
  end
end
