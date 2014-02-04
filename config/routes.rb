Bandcloud::Application.routes.draw do


  resources :comments


  resources :songs


  resources :artists
  resources :home
  resources :sessions
  root to: "home#index"

 get "/signup", to: "artists#new",        as: "signup"
  get "/login",  to: "sessions#new",     as: "login"
  delete "/logout", to: "sessions#destroy", as: "logout"




end


# songs GET    /songs(.:format)             songs#index
#              POST   /songs(.:format)             songs#create
#     new_song GET    /songs/new(.:format)         songs#new
#    edit_song GET    /songs/:id/edit(.:format)    songs#edit
#         song GET    /songs/:id(.:format)         songs#show
#              PUT    /songs/:id(.:format)         songs#update
#              DELETE /songs/:id(.:format)         songs#destroy
#      artists GET    /artists(.:format)           artists#index
#              POST   /artists(.:format)           artists#create
#   new_artist GET    /artists/new(.:format)       artists#new
#  edit_artist GET    /artists/:id/edit(.:format)  artists#edit
#       artist GET    /artists/:id(.:format)       artists#show
#              PUT    /artists/:id(.:format)       artists#update
#              DELETE /artists/:id(.:format)       artists#destroy
#   home_index GET    /home(.:format)              home#index
#              POST   /home(.:format)              home#create
#     new_home GET    /home/new(.:format)          home#new
#    edit_home GET    /home/:id/edit(.:format)     home#edit
#         home GET    /home/:id(.:format)          home#show
#              PUT    /home/:id(.:format)          home#update
#              DELETE /home/:id(.:format)          home#destroy
#     sessions GET    /sessions(.:format)          sessions#index
#              POST   /sessions(.:format)          sessions#create
#  new_session GET    /sessions/new(.:format)      sessions#new
# edit_session GET    /sessions/:id/edit(.:format) sessions#edit
#      session GET    /sessions/:id(.:format)      sessions#show
#              PUT    /sessions/:id(.:format)      sessions#update
#              DELETE /sessions/:id(.:format)      sessions#destroy
#         root        /                            home#index
#       signup GET    /signup(.:format)            artists#new
#        login GET    /login(.:format)             sessions#new
#       logout DELETE /logout(.:format)            sessions#destroy
