Rails.application.routes.draw do
  root to: 'pages#index'

  resources :orderitems, only: [:edit, :destroy]
  patch 'orderitems/:id', to: 'orderitems#update'
  patch 'orderitems/:id/mark_shipped', to: 'orderitems#markshipped', as: 'mark_shipped'

  resources :orders, only: [:show, :edit]
  get '/cart', to: 'orders#cart', as: 'cart'
  patch '/orders/:id', to: 'orders#update'
end
