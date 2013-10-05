Waldo::Application.routes.draw do
  root 'home#show'

  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'

  resources :users
  resources :checkins
  resources :zones
  resources :areas
  resource :home, controller: :home, only: :show
end
