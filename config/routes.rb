Rails.application.routes.draw do

#users
<<<<<<< HEAD
  resources :users do
    resources :reviews #?? Necessary?
  end
=======
  resources :users
>>>>>>> 639e36146d3c8eacf6bad5afa89d3ce0c63475df

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
