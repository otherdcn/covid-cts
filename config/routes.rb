Rails.application.routes.draw do
  root 'registers#index'
 
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  
  resources :registers

  get 'new', to: 'registers#new', as: 'new'
  
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  get 'cities/:state', to: 'application#cities'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
