Rails.application.routes.draw do
  match :admin, to: 'admin/dashboard#index', via: [:get]
  match :back_as_admin, to: 'admin#back_as_admin', via: :get
  get 'superadmins/:id/become', to: 'superadmins#become',  as: 'become'

  namespace :admin do
    resources :addresses
    #resources :users
    resources :dispatchers
    resources :employees
    resources :customers
    resources :dashboard
  end

  scope '/admin' do
    resources :products
    resources :brands
    resources :plans
    resources :states
    resources :cities
    resources :entries
    resources :customer_types
    resources :orders
    resources :payments
    resources :trips
    resources :vehicles
  end

  resources :superadmins

  put "admin/:id", to: "admin#update", as: :admin_update

  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  root 'plainpage#index'
end
