Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'tags/:tag', to: 'profiles#index', as: :tag
  devise_for :users
  resources :profiles
  root 'profiles#index'
end
