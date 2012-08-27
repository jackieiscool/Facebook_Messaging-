LoginFacebook::Application.routes.draw do
  root :to => 'users#index'

  get   '/login', :to => 'user_sessions#new', :as => :login
  get '/logout', :to => 'user_sessions#destroy', :as => :logout
  match '/auth/:provider/callback', :to => 'user_sessions#create'
  match '/auth/failure', :to => 'user_sessions#failure'

  resources :users
  resources :messages
  resources :conversations
end
