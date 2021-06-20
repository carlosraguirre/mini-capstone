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

end
