Rails.application.routes.draw do
  get '/sessions', to: 'sessions#create'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/users', to: 'users#show'
end
  