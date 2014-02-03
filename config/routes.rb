Bandcloud::Application.routes.draw do


  resources :songs


  resources :artists
  resources :home
  resources :sessions
  root to: "home#index"

 get "/signup", to: "artists#new",        as: "signup"
  get "/login",  to: "sessions#new",     as: "login"
  delete "/logout", to: "sessions#destroy", as: "logout"




end


