class RestaurantsController < ApplicationController
    protect_from_forgery
rescue_from ActiveRecord::RecordNotFound, with: :record_error

    def index
        all_restaurants = Restaurant.all
        render json: all_restaurants
    end

    def show
        render json: get_by_id
    end

    def create
        new_restaurant = Restaurant.create!(allowed_params)
        render json: new_restaurant
    end

    def destroy
        get_by_id.destroy!
    end

    private

    def get_by_id
    single_restaurant = Restaurant.find(params[:id])
    end

    def allowed_params
        params.permit(:name,:address)
    end

    def record_error
      render json: {error: "Restaurant not found"}
    end

end
