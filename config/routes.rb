Waldo::Application.routes.draw do
  root 'home#show'

  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'

  resources :users
  resources :checkins
  resources :rooms
  resources :floorplans
  resource :home, controller: :home, only: :show
end
