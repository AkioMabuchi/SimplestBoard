Rails.application.routes.draw do
  get "/" => "home#top"
  get "/posts" => "posts#index"
  get "/posts/new" => "posts#new"
  get "/posts/show/:id" => "posts#show"
  
  post "/create/:id" => "posts#create"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
