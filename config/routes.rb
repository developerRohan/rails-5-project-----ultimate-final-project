Rails.application.routes.draw do
  

  root to: 'pages#home'
  get 'itsme-rohan', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  # this is restful routing
  resources :blogs
  resources :portfolios, except: [:show]
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
