Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/friends',     to: 'friends#index'
  get 'friends/new',  to: 'friends#new', as: :new_friend # The `new` route needs to be *before* `show` route.

  get '/friends/:id', to: 'friends#show', as: :friend
  post 'friends',     to: 'friends#create'

  get 'friends/:id/edit', to: 'friends#edit', as: :edit_friend
  patch "friends/:id",    to: "friends#update"

  delete "friends/:id", to: "friends#destroy", as: :dell
end
