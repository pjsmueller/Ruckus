Rails.application.routes.draw do

#users
  resources :users, only: [:new, :create, :show]

#genres
  resources :genres, only: [:index, :show]

#movies
  resources :movies, except: [:edit, :delete, :new] do
    resources :reviews do
      resources :comments, only: [:create]

    end
  end

#actors
  resources :actors, only: [:index, :show]

#sessions
  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"
  post "login" => "sessions#create"


root "movies#index"
end
