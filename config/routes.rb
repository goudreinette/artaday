Rails.application.routes.draw do
  get 'welcome/index'

  resources :artworks

  root 'artworks#index'
end
