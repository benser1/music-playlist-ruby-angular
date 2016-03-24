Rails.application.routes.draw do
    
  root 'application#angular'
  # get '*path' => 'application#index'

  get '/search', to: 'searches#search'
  post '/search', to: 'searches#music'


end
