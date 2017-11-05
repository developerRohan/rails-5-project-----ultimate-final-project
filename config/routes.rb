Rails.application.routes.draw do
  
  get 'topics/index'

  get 'topics/show'

   mount ActionCable.server => '/cable'
  resources :comments
  devise_for :users, path: '', path_names: {sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  root to: 'pages#home'
  get 'itsme-rohan', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'tech-news', to: 'pages#tech_news'

  # this is restful routing
  resources :blogs do
    member do
      get :toggle_status
    end
  end

  resources :portfolios, except: [:show]
  resources :topics, only: [:index , :show]
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'blogs/*missing' , to: 'blogs#missing'

 
  
end
