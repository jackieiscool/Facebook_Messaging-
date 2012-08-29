LoginFacebook::Application.routes.draw do
  root :to => 'homepage#index'

  get   '/login', :to => 'user_sessions#new', :as => :login
  get '/logout', :to => 'user_sessions#destroy', :as => :logout
  match '/auth/:provider/callback', :to => 'user_sessions#create'
  match '/auth/failure', :to => 'user_sessions#failure'

  resources :users
  resources :friends
  resources :user_sessions

  match 'friend_object' => "conversations#return_friends"

  resources :conversations do
    resources :user_conversations
    resources :messages
  end
end
