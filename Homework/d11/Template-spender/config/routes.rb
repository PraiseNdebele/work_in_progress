Rails.application.routes.draw do
  root 'spenders#home'
  resources :spenders
end
