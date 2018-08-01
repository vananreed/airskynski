Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :items do
    resources :bookings, only: [:create]
  end
  get 'items/myitems', to: 'items#myitems', as: 'myitems'
  resources :bookings, only: [:index, :show, :destroy]
end
