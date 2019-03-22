Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_for :users
  root to: 'pages#home'

  # as locataire
  resources :costumes, only: [:index, :show] do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, only: [:index]

  # as both locataire and owner
  resource :profile, only: [:show]

  # as owner
  namespace :owner do
    resources :costumes, only: [:index, :new, :create, :show]

    resources :bookings, only: [:index] do
      member do
        patch :accept
        patch :decline
      end
    end
  end
end
