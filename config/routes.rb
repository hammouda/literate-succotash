Rails.application.routes.draw do
  resources :teachers
  resources :homeworks
  resources :messages
  resources :reports
  resources :remarks
  resources :students
  resources :classes
  resources :levels
  resources :parents
  resources :groups
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
