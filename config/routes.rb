Rails.application.routes.draw do
  resources :jobs
  resources :projects
  resources :memberships
  resources :materials
  resources :people
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
