Rails.application.routes.draw do
  resources :ingredients
  resources :recipe_ingredients, only: :create
  resources :allergies
  resources :recipes
  resources :users

  get "/recipes/[:id]/new", to: "recipe_ingredients#new", as: :new_ir_path
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
