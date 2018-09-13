Rails.application.routes.draw do
  get 'products/index'
  get 'products/show'
  get 'products/edit'
  get 'products/create'
  get 'products/update'
  get 'products/destroy'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root 'products#index'
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
