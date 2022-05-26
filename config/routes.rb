Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :friends do
    resources :reviews, only: [ :new, :create, :edit, :update ]
    resources :reservations, only: [ :new, :create ]
  end
  resources :reservations, only: [ :edit, :update, :destroy ]
end
