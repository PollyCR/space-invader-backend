Rails.application.routes.draw do
  resources :messages
  resources :chatrooms
  resources :users

  get "/api/APOD", to: "api#getAPOD"
  get "/api/asteroid", to: "api#getAsteroid"
  get "/api/launch", to: "api#getLaunch"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
