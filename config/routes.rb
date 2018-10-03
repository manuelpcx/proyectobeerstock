Rails.application.routes.draw do
  resources :products do
    resources :orders, only: :create
  end

  resources :orders, only: :index

 root 'pages#index'

  devise_for :users, controllers: {
        registrations: 'users/registrations'
      }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
