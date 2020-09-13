Rails.application.routes.draw do

  devise_for :users
  get "/feeds" => "users#index"
  get "profile/:username" => "users#profile", as: :profile
  resources :posts, only: [:new,:create,:show]
  root to: "main#home"
end
