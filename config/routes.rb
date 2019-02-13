Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html\
  resources :animes, only: [:index, :show]
  resources :directors, only: [:index, :show]
  resources :publishers, only: [:index, :show]
  resources :studios, only: [:index, :show]
  resources :users
  resources :voice_actors, only: [:index, :show]
end
