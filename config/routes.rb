Rails.application.routes.draw do
  get 'home/index'
  get '/auth/:provider/callback', to: 'sessions#create'
  get '/auth/failure', to: redirect('/')
  get '/signout', to: 'sessions#destroy', as: 'signout'

  # Adicione a rota para o provedor Spotify
  get '/auth/spotify', as: 'spotify_login'

  root to: 'home#index'
end

