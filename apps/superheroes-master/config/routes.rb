Rails.application.routes.draw do
  get 'home/index'
  root 'home#index'

  get '/heroes', to: 'heroes#index'
  get '/heroes/:hero', to: 'heroes#hero', as: 'hero'

  get '/heroes/:hero1/:hero2', to: 'heroes#multiple', as: 'mult_hero'
end