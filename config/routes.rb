Rails.application.routes.draw do
  get 'lights', to: 'lights#get'
  post 'lights', to: 'lights#set'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
