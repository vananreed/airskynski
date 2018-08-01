Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :items do
    resources :bookings, only: [:create]
    resources :item_reviews, only: [:new, :create]
  end
  get 'dashboard', to: 'users#dashboard', as: 'dashboard'
  resources :bookings, only: [:index, :show, :destroy]
end
