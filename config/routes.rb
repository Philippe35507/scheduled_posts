Rails.application.routes.draw do
  resources :friends_dbs
  get "home/about"
  root 'home#index'
end
