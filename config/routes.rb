Rails.application.routes.draw do
  post "/login" => "sessions#create"
  get "/logout" => "sessions#destroy"
  post "/signup" => "users#create"

  get "/user" => "user#index"
  get "/user/:id" => "user#show"

  get "property" => "property#index"
  get "property/:id" => "property#show"
  
  post "property" => "property#create"
  delete "property/:id" => "property#destroy"
  
  ### falta 
  patch "property/:id" => "property#update" 
end
