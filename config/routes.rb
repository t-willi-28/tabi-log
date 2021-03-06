Rails.application.routes.draw do
  devise_for :users
  root to: 'logs#index'
  resources :logs, only: [:index, :new, :create, :show, :destroy] do
    resources :comments, only: :create
  end
end
