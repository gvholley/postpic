Rails.application.routes.draw do
  root 'pages#home'
  devise_for :users

  resources :users, only: [:show]

  resources :posts, only: [:index, :show, :create] do
    resources :photos, only: [:create]
  end
end
