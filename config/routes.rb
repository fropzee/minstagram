Rails.application.routes.draw do

  devise_for :users
  get "/feeds" => "users#index"
  root to: "main#home"
end
