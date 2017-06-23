Rails.application.routes.draw do

#users
  resources :users

#genres
  resources :genres, only: [:index, :show]

#comments
  resources :comments, except: [:show]

#movies
  resources :movies, except: [:edit, :delete, :new] do
    resources :reviews
  end

#actors
  resources :actors, only: [:index, :show]

#sessions
  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"
  post "login" => "sessions#create"


root "movies#index"
end
