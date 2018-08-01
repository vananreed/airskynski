Rails.application.routes.draw do
  get 'users/dashboard'
  devise_for :users
  root to: 'pages#home'
  resources :items do
    resources :bookings, only: [:create]
  end
  get 'dashboard', to: 'users#dashboard', as: 'dashboard'
  resources :bookings, only: [:index, :destroy] do
    resources :item_reviews, only: [:create]
  end
end
