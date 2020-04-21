Rails.application.routes.draw do
  resources :customers
  devise_for :users
  resources :orders
  resources :pages
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

    root 'welcome#index'
    scope 'checkout' do
    post 'create', to: 'checkout#create', as: 'checkout_create'
    get 'success', to: 'checkout#success', as: 'checkout_success'
    get 'cancel', to: 'checkout#cancel', as: 'checkout_cancel'
    get 'test', to: 'checkout#test', as: 'checkout_test'
  end
  post 'products/add_to_cart/:id', to: 'products#add_to_cart', as: 'add_to_cart'
  delete 'products/remove_from_cart/:id', to: 'products#remove_from_cart', as: 'remove_from_cart'

  get 'welcome' => 'welcome#index'

  get 'products' => 'products#index', as: 'products'

  get 'products/:id' => 'products#show', as: 'product'

  get 'static/:permalink' => 'pages#static', as: 'static'

  get 'search' => 'products#search', as: 'search'

  get 'categories' => 'categories#show', as: 'categories'

  get 'cart' => 'cart#show', as: 'cart'
end
