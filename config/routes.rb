Rails.application.routes.draw do
  resources :comments, only: %i[create destroy]
  resources :posts
  post "toggle_like", to: "likes#toggle_like", as: :toggle_like
  devise_for :users
  root  'home#index'
end
