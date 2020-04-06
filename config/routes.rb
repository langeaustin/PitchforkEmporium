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
end
