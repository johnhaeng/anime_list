Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html\
  get "/login" => "sessions#login"
  post "/login" => "sessions#sign"
  get "/new_account" => "sessions#new"
  post "/new_account" => "sessions#create"
  get "/home" => "application#home"
  get "/list" => "anime_users#show"
  get "/log_out" => "sessions#logout"
  resources :animes, only: [:index, :show]
  resources :users, only: [:show, :edit]
end
