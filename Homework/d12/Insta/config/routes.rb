Rails.application.routes.draw do
  devise_for :users

  resources :users , only: [] do
    resources :photos
  end

  get '/photos', to: 'photos#show'
  root 'photos#show_all'

   resources :photos , only: [] do
    resources :comments
  end
  
end