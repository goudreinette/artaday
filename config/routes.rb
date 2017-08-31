Rails.application.routes.draw do
  resources :artworks
  root 'artworks#index'

  get '/profile' => 'sessions#show'

  match "/auth/:provider/callback" => "sessions#create", via: [:get, :post]
  match "/signout" => "sessions#destroy", as: :signout, via: [:get, :post]
end
