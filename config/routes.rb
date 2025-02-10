Rails.application.routes.draw do
  # get "restaurants", to: "restaurants#index"
  # get "restaurants/new", to: "restaurants#new", as: :new_restaurant
  # post "restaurants", to: "restaurants#create", as: :create_restaurant
  # get "restaurants/:id", to: "restaurants#show", as: :restaurant
  # get "restaurants/:id/reviews/new", to: "reviews#new", as: :new_restaurant_review
  # post "restaurants/:id/reviews", to: "reviews#create", as: :create_restaurant_review

  resources :restaurants, only: [:index, :new, :create, :show] do
    resources :reviews, only: [:create]
  end
end
