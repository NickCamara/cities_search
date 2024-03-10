Rails.application.routes.draw do
  resources :cities
  root 'cities#index'
  
  get '/cities/search', to: 'cities#search', as: 'city_search'
end
