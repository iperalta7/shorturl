Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # Set root path route ("/") to the index action of the ShortUrlsController
  root 'short_urls#index'

  # A custom route to handle the "show" action with a "short_url" parameter -> must be before next resources line
  get '/short_urls/:short_url', to: 'short_urls#show', as: :short_url

  # Use the resources method to generate other routes for the ShortUrlsController
  resources :short_urls, only: [:index, :create, :destroy]

end
