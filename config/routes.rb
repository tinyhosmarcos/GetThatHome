Rails.application.routes.draw do
  root :to => "sessions#create"
  post "/login" => "sessions#create"
  get "/logout" => "sessions#destroy"
  post "/signup" => "users#create"

  get "property" => "property#index"
  get "property/:id" => "property#show"
  
  post "property" => "property#create"
  delete "property/:id" => "property#destroy"
  
  ### falta 
  patch "property/:id"   => "property#update" 

  post "status" => "statuses#create"
  get "user/:id/status" => "statuses#index"
  get "user/:id/status/:id" => "statuses#show"
  delete "status/:id" => "statuses#destroy"
  
end
