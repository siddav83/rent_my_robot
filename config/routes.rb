Rails.application.routes.draw do
  resources :robots do
    resources :appointments, only: [ :index, :show, :new, :create ]
  end
  devise_for :users
  root to: 'pages#home'
  resources :users
  end
end


