Rails.application.routes.draw do
  root 'artworks#index'

  resources :artworks do
    member do
      get 'favorite'
      get 'unfavorite'
    end
  end

  get '/profile' => 'sessions#show'

  match "/auth/:provider/callback" => "sessions#create", via: [:get, :post]
  match "/signout" => "sessions#destroy", as: :signout, via: [:get, :post]
end
