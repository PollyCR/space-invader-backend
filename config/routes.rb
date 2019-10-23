Rails.application.routes.draw do
  mount ActionCable.server => '/cable'
  resources :messages
  resources :chatrooms
  resources :users

  post "/login", to: "auth#create"
  post "/signup", to: "users#create"
  post "/validate", to: "auth#validate"
  get "/api/APOD", to: "api#getAPOD"
  get "/api/asteroid", to: "api#getAsteroid"
  get "/api/launch", to: "api#getLaunch"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
