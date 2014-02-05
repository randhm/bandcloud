Bandcloud::Application.routes.draw do





  resources :songs do
    resources :comments do
      get 'flag', on: :member
      get 'flagged_comments', on: :member
    end
  end

  get '/flagged_comments', to: 'comments#flagged_comments', as: 'flagged_comments'
  resources :artists
  resources :home
  resources :sessions
  root to: "home#index"

 get "/signup", to: "artists#new",        as: "signup"
  get "/login",  to: "sessions#new",     as: "login"
  delete "/logout", to: "sessions#destroy", as: "logout"




end


