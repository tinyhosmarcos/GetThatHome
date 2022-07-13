Rails.application.routes.draw do
  post "/login" => "sessions#create"
  get "/logout" => "sessions#destroy"
  post "/signup" => "users#create"
end
