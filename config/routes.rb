Rails.application.routes.draw do
  resources :bullets
  resources :logs
  get 'users/new', to: 'users#new'
  post 'users', to: 'users#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
