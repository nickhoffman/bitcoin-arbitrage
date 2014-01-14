BitcoinArbitrage::Application.routes.draw do
  root 'user_sessions#new'

  get   'login'   => 'user_sessions#new',     :as => :login
  post  'logout'  => 'user_sessions#destroy', :as => :logout

  resources :users,         :only => [:edit, :update]
  resources :user_sessions, :only => [:new, :create, :destroy]
end
