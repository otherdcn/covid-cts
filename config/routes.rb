Rails.application.routes.draw do
  resources :employment_histories
  resources :contacts
  resources :specialisations
  resources :fields
  resources :categories
  resources :people
  resources :sectors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
