Rails.application.routes.draw do
  root "main#index"
  get '/cities/view', to: 'pages#home'
end
