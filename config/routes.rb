Rails.application.routes.draw do
  root 'home#index'
  get 'home/index'
  resources :people do
    resources :contacts
    resources :essays
    resources :specialisations
    resources :language_proficiencies
    resources :skills
    resources :qualifications
    resources :professional_memberships
    resources :references
    resources :employment_histories
  end

  resources :skill_types
  resources :fields
  resources :categories
  resources :sectors
  resources :all_qualifications
  resources :all_specialisations
  resources :all_skills
  resources :all_professional_memberships
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
