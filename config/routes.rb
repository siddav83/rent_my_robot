Rails.application.routes.draw do
  resources :robots do
    resources :appointments, only: [ :new, :create ]
  devise_for :users
  root to: 'pages#home'
  resources :users
end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
