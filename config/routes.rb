Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  root to: 'pages#home'
  resources :items do
    resources :bookings, only: [:create]
  end
  get 'dashboard', to: 'users#dashboard', as: 'dashboard'
  resources :bookings, only: [:index, :destroy] do
    resources :item_reviews, only: [:create]
  end
end
