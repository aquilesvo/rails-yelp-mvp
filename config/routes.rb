Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :restaurants, only: [ :index, :show, :new, :create ] do
    resources :reviews, only: [ :index, :new, :create ]
  end

  resources :reviews, only: [ :show ]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end




    # collection do
    #   get '/top', to: 'restaurants#top'
    # end

    # member do
    #   get '/chef', to:  'restaurants#chef'
    # end




# A visitor can see the list of all restaurants.
# GET "restaurants"
# He can add a new restaurant, and be redirected to the show view of that new restaurant.
# GET "restaurants/new"
# POST "restaurants"
# He can see the details of a restaurant, with all the reviews related to the restaurant.
# GET "restaurants/38"
# He can add a new review to a restaurant
# GET "restaurants/38/reviews/new"
# POST "restaurants/38/reviews"
# And that's it!
