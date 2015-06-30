Rails.application.routes.draw do
 resources :places do
 	resources :comments
 end
end
