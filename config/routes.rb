Rails.application.routes.draw do
  root "main#index"
  get '/cities/view', to: 'cities#view'
  get '/cities/new', to: 'cities#new'
  post '/cities/signup
end
