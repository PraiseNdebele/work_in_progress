Rails.application.routes.draw do
  devise_for :users
  root 'spenders#home'
  resources :spenders #, shallow: true  
end
