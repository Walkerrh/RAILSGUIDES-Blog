Rails.application.routes.draw do # This line is the start of the block where you define all your application's routes

# end
  # get "/articles", to: "articles#index"
  # get "/articles/:id", to: "articles#show"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.

  get "up" => "rails/health#show", as: :rails_health_check # This line defines a route for GET requests to "/up". These requests are routed to the show action of the rails/health controller. The as: :rails_health_check part of this line names the route rails_health_check, which allows you to use rails_health_check_path and rails_health_check_url as helpers in your views and controllers.

  root "articles#index" # In this case, the root route is set to the index action of the articles controller. This means that when a user navigates to the root URL of your application, they will be shown the index view of the articles controller.

  resources :articles do
    resources :comments
  end # This block creates standard RESTful routes for the articles resource. The resources :comments line inside the block creates nested routes for the comments resource under articles. This means you'll have routes like "/articles/:article_id/comments/:id"

  # Defines the root path route ("/")
  # root "posts#index"
end
