Rails.application.routes.draw do
  mount Shoppe::Engine => "/shoppe"
  devise_for :users
  root  "products#index"

  get "product/:permalink", to: "products#show", as: "product"
  post "product/:permalink", to: "products#buy", as: "buy"
  get "basket", to: "orders#show"
  delete "basket", to: "orders#destroy"
end
