Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html\
  resources :animes, only: [:index]
  resources :directors, only: [:index]
  resources :publishers, only: [:index]
  resources :studios, only: [:index]
  resources :users, only: [:index]
  resources :voice_actors, only: [:index]
end
