Mapdemo1::Application.routes.draw do

  root "pages#home"

  get "/home", to: "pages#home", as: "home"
  get "/about", to: "pages#about", as: "about"

  # used for dev-testing only for reviewing records
  # resources :businesses

end
