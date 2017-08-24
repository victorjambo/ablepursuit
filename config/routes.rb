Rails.application.routes.draw do

  get 'pages/about'

  get 'pages/contact'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  get 'tags/:tag', to: 'profiles#index', as: :tag

  devise_for :users, skip: :registration

  resources :profiles

  root 'profiles#index'

  get '*path', to: redirect('/404')
  
end
