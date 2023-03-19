class RestaurantsController < ApplicationController
    protect_from_forgery
rescue_from ActiveRecord::RecordNotFound, with: :record_error

    def index
        all_restaurants = Restaurant.all
        render json: all_restaurants, except: [:created_at,:updated_at]
    end

    def show
        render json: get_by_id, except: [:created_at,:updated_at]
    end

    def create
        new_restaurant = Restaurant.create!(allowed_params)
        render json: new_restaurant, except: [:created_at,:updated_at]
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
