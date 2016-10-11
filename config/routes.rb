Rails.application.routes.draw do
  match :admin, to: 'admin/dashboard#index', via: [:get]

  namespace :admin do
    resources :addresses
    resources :users
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
  end

  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  root 'plainpage#index'
end
