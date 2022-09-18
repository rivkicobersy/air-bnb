Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/signup" => "users#new"
  post "/users" => "users#create"
  get "/images" => "images#index"
  post "/images" => "images#create"
  get "/images:id" => "images#show"
  patch "/images:id" => "images#update"
  delete "/images/:id" => "images#destroy"
end
