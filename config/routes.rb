Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root 'short_urls#index'
  resources :short_urls, only: [:index, :create, :show, :destroy]
  get ':short_url', to: 'short_urls#redirect', as: :redirect
end
