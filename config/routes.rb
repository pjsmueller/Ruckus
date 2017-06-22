Rails.application.routes.draw do

#users

  resources :users

#comments
  resources :comments, except: [:show]

#movies
  resources :movies, except: [:edit, :delete, :new] do
    resources :reviews
  end

#sessions
  get 'login', to: 'sessions#new'
  get 'logout', to: "sessions#destroy"
  post 'login',   to: 'sessions#create'

# root "movies#index"
end
