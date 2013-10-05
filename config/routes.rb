Waldo::Application.routes.draw do
  root 'home#show'

  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'

  resource :home, controller: :home, only: :show
  resources :users, only: [:index, :show]
  resources :checkins, only: :create
  resources :areas, only: [:index, :show] do
    resources :zones, only: [:index, :show]
  end
end
