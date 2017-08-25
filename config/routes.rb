Rails.application.routes.draw do
    root "welcome#index"
  resources :teachings
  resources :teachers
  resources :messages
  resources :reports
  resources :students
  resources :classes
  resources :levels
  resources :parents
  resources :groups
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
