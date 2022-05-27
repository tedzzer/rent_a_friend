Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get '/current_user', to: 'current_user#show', as: 'current_user'

  resources :friends, only: %i[index show destroy] do
    resources :reviews, only: %i[new create edit update]
    resources :reservations, only: %i[new create edit update]
  end
  resources :reservations, only: :destroy
end
