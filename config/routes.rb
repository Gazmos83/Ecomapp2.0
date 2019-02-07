Rails.application.routes.draw do
  resources :products
  resources :orders, only: [:index, :show, :create, :destroy]
  resources :users, except: [:index]
  get 'orders/index'
  get 'orders/show'
  get 'products/index'
  get 'products/show'
  get 'simple_pages/about'
  get 'simple_pages/faq'
  get 'simple_pages/index'
  get 'simple_pages/contact'
  get 'simple_pages/landing_page'


  root 'simple_pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
