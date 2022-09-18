Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :reservations
  get "/signup" => "users#new"
  post "/users" => "users#create"
  resources :reviews
  get "/images" => "images#index"
  post "/images" => "images#create"
  get "/images:id" => "images#show"
  patch "/images:id" => "images#update"
  delete "/images/:id" => "images#destroy"
  get "/login" => "sessions#new"
  post "/sessions" => "sessions#create"
  get "/logout" => "sessions#destroy"
end
