Rails.application.routes.draw do

  devise_for :users
  get "/feeds" => "users#index"
  get "profile/:username" => "users#profile", as: :profile
  post "follow/user" => "users#follow_user", as: :follow_user
  resources :posts, only: [:new,:create,:show]
  root to: "main#home"
end
