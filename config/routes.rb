Rails.application.routes.draw do


  # Users

  post "/users", controller: "users", action: "create"
  get "/users/:id", controller: "users", action: "show"
  patch "/users/:id", controller: "users", action: "update"
  delete "/users/:id", controller: "users", action: "destroy"

  # Favorites
  get "/favorites", controller: "favorites", action: "index"
  post "/favorites", controller: "favorites", action: "create"
  patch "/favorites/:id", controller: "favorites", action: "update"
  delete "favorites/:id", controller: "favorites", action: "destroy"

  # Recipes
  get "/recipes", controller: "recipes", action: "index"
  get "/recipes/:id", controller: "recipes", action: "show"


  # Sessions

  post "/sessions", controller: "sessions", action: "create"

  get "/\*path" => proc { [200, {}, [ActionView::Base.new.render(file: 'public/index.html')]] }


end
