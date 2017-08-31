Rails.application.routes.draw do
  get 'welcome/index'

  resources :artworks

  root 'artworks#index'

  match "/auth/:provider/callback" => "sessions#create", via: [:get, :post]
  match "/signout" => "sessions#destroy", as: :signout, via: [:get, :post]
end
