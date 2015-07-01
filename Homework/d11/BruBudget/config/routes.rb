Rails.application.routes.draw do
  root 'spenders#home'

  resources :spenders do
  	resources :expenditures
  end

  # resources :spenders , only: [] do
  # 	resources :expenditures
  # end

end
