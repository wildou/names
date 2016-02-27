Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  resources :users
  resources :names
  resources :wishlists, only: [:index, :show, :new, :create, :destroy] do
    resources :names, only: :show
  end
end

