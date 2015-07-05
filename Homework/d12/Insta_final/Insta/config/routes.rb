Rails.application.routes.draw do
  devise_for :users

  resources :users , only: [] do
    resources :photos
  end

  get '/photos', to: 'photos#show_all'
  root 'photos#show_all'

   resources :photos , only: [] do
    resources :comments
  end

  get '/contact', to: 'photos#contact'
  
end