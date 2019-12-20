Rails.application.routes.draw do
  resources :comments
  resources :favorites
  resources :restaurants, only: [:index, :show]
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
