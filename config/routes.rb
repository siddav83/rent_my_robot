Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # resources :users
  resources :robots do
    resources :appointments, only: [ :index, :show, :new, :create ]
  end
end
