Rails.application.routes.draw do
  get 'static_pages/home'
  root 'static_pages#home'

  get 'static_pages/help'

  get 'static_pages/about'
  get  'signup',  to: 'users#new'
  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
