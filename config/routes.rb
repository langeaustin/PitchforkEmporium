Rails.application.routes.draw do
  resources :pages
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  Rails.application.routes.draw do
  resources :pages
    root 'welcome#index'
      # resources :products
  end

  get 'welcome' => 'welcome#index'

  get 'products' => 'products#index', as: 'products'

  get 'products/:id' => 'products#show', as: 'product'

  get 'static/:permalink' => 'pages#static', as: 'static'

  get 'search' => 'products#search', as: 'search'

  scope 'checkout' do
    post 'create', to: 'checkout#create', as 'checkout_create'
    get 'success', to: 'checkout#success', as: 'checkout_success'
    get 'cancel', to: 'checkout#cancel', as: 'checkout_cancel'
  end
end
