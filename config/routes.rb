Rails.application.routes.draw do
  

  root to: 'pages#home'
  get 'itsme-rohan', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  # this is restful routing
  resources :blogs
  resources :portfolios
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
