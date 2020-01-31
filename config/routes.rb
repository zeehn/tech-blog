Rails.application.routes.draw do
  resources :articles
  root 'pages#home'
  get 'signup', to: 'users#new'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  resources :users, except: [:new]
end
