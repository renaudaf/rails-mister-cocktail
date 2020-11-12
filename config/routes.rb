Rails.application.routes.draw do
  root to: 'cocktails#index'
  get "/cocktails", to: "cocktails#index"
  get "/cocktails/new", to: "cocktails#new"
  post "/cocktails", to: "cocktails#create" 
  get "/cocktails/:id", to: "cocktails#show"
  get "/cocktails/:cocktail_id/doses/new", to: "doses#new"
  post "/cocktails/:cocktail_id/doses/", to: "doses#create"
  delete "/doses/:id", to: "doses#destroy"
end
