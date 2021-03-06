Rails.application.routes.draw do
  root to: 'cocktails#index'
  # get "/cocktails", to: "cocktails#index"
  # get "/cocktails/new", to: "cocktails#new", as: "new_cocktail"
  # post "/cocktails", to: "cocktails#create" 
  # get "/cocktails/:id", to: "cocktails#show", as: "cocktail"
  # get "/cocktails/:cocktail_id/doses/new", to: "doses#new" as: "new_cocktail_dose"
  # post "/cocktails/:cocktail_id/doses/", to: "doses#create" as: "cocktail_doses"
  # delete "/doses/:id", to: "doses#destroy"
  resources :cocktails do
   resources :doses, only:[:new, :create]
   resources :reviews, only:[:new, :create]
  end
  resources :doses, only: [ :destroy ]
end
