Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  # index route
  get "/products", controller: "products", action: "index"

  # show route
  get "/products/:id", controller: "products", action: "show"

  # create route
  post "/products", controller: "products", action: "create"

  # update route
  patch "/products/:id", controller: "products", action: "update"

  # delete route
  delete "/products/:id", controller: "products", action: "destroy"

  # user create
  post "/users", controller: "users", action: "create"

  # user sign in
  post "/sessions" => "sessions#create"

  # order create
  post "/orders" => "orders#create"

  # order show
  get "/orders/:id" => "orders#show"

  # order index
  get "/orders" => "orders#index"

  # user index
  get "/users" => "users#index"

end
