class FavoritesController < ApplicationController
    before_action :find_favorite, only: [:show, :create, :update, :destroy]
    def index
        favorites = Favorite.all
        # options = {
        #     include: [:user, :restaurant]
        # }
        render json: FavoriteSerializer.new(favorites)

    end

    def show
        options = {
            include: [:user, :restaurant]
        }
        render json: FavoriteSerializer.new(@favorite, options) 
    end

    def create
        @favorite = Favorite.create(favorite_params)
        render json: FavoriteSerializer.new(@favorite)
    end

    def update
        @favorite.update(favorite_params)
        render json: FavoriteSerializer.new(@favorite)
    end

    def destroy
        @favorite.delete
    end

    private

    def find_favorite
        @favorite = Favorite.find_by(id: params[:id])
    end

    def favorite_params
        params.require(:favorite).permit(:recommendations, :likes, :user_id, :restaurant_id)
    end

end
