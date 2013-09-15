Waldo::Application.routes.draw do
  resources :checkins
  resources :rooms

  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'

  root 'home#show'

  resources :notes
  resources :users
  resource :home, controller: :home, only: :show
end
