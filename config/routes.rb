Rails.application.routes.draw do
  resources :planner_bookings
  resources :planners
  devise_for :users
  root to: "planners#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end
