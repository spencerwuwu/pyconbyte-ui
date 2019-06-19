Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#index'

  get '/editor/:id', :to => 'pages#index', :as => 'editor'
  post '/load-example', :to => 'pages#load_example', :as => 'load_example'
end
