Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#   resources :users
# get '/home' => 'users#new'
# root to: 'users#home'
# get '/signin', to: 'sessions#create'
# post '/signin', to: 'sessions#create'

resources :users, :attractions

get "/users/new", to: "users#new"
root to: 'users#new'
get "/signin", to: "sessions#new"
post "/signin", to: "sessions#create"
delete "/logout", to: "sessions#destroy"

end

# resources :users
# resources :attractions do 
#   post '/rides', to: "rides#create"
# end

# "/attractions/:id/rides"

# root "home#index"

# get '/signin', to: "sessions#new"
# post '/signin', to: "sessions#create"
# delete '/signout', to: "sessions#destroy"