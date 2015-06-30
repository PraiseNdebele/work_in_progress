Rails.application.routes.draw do
  devise_for :users
  root 'courses#home'
  resources :courses do
  	resources :notes
  end
end
