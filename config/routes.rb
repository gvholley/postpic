Rails.application.routes.draw do
  root 'pages#home'
  devise_for :users

  resources :users, only: [:show]

  resoures :posts, only: [:index, :show, :create] do
    resources :photos, only: [:create]
end
