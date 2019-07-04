Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root to: 'pages#index'
  root to: 'pages#codetest'

  get '/ed/:id', :to => 'pages#index', :as => 'editor'
  post '/cr', :to => 'pages#create_task', :as => 'create_task'
  post '/le', :to => 'pages#load_example', :as => 'load_example'

  post '/rc', :to => 'pages#run_codetest', :as => 'run_codetest'
  post '/lc', :to => 'pages#load_codetest', :as => 'load_codetest'
end
