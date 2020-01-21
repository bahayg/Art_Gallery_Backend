Rails.application.routes.draw do
  resources :artwork_galleries
  resources :artworks
  resources :galleries
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
