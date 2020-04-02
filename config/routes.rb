Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  Rails.application.routes.draw do
    root 'welcome#index'
      # resources :products
  end

     get 'products' => 'products#index'

     get 'products/:id' => 'products#show'

end
