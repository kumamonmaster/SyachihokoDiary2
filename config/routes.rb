Rails.application.routes.draw do
  root 'articles#index'
  devise_for :users
  resources :users, only: [:index, :show]
  resources :articles do
    resource :like, only: [:create, :destroy]
  end
end
