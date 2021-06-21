Rails.application.routes.draw do


  # Users

  post "/users", controller: "users", action: "create"

  # Sessions

  post "/sessions", controller: "sessions", action: "create"

end
