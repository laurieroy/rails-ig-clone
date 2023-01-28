Rails.application.routes.draw do
  resources :comments, only: %i[create destroy]
  resources :posts

  post "follow", to: "follows#follow", as: :follow
  post "accept_follow", to: "follows#accept_follow", as: :accept_follow
  delete "decline_follow", to: "follows#decline_follow", as: :decline_follow
  delete "unfollow", to: "follows#unfollow", as: :unfollow
  delete "cancel_request", to: "follows#cancel_request", as: :cancel_request

  post "toggle_like", to: "likes#toggle_like", as: :toggle_like
  
  devise_for :users
  resources :users, only: [:show]

  root  'home#index'
end
