class RestaurantsController < ApplicationController
    def index
        restaurants = Restaurant.all
        render json: restaurants
    end

    def show
        restaurant = Restaurant.find_by(params[:id])
        render json: restaurant
    end

    private

    def restaurant_params
        params.require(:restaurant).permit(:name)
    end

end
