Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  Rails.application.routes.draw do
    root 'welcome#index'
      # resources :products
  end

  get 'welcome' => 'welcome#index'

  get 'products' => 'products#index', as: 'products'

  get 'products/:id' => 'products#show', as: 'product'

  get 'about' => 'about#index', as: 'about'
end
