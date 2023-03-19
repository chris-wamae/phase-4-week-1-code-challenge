class RestaurantPizzasController < ApplicationController
    protect_from_forgery
    rescue_from ActiveRecord::RecordNotFound, with: :error_message
    #checks if the a pizza with the passed pizza_id exists
    #checks if a restaurant with the passed restaurant_id exists
    #if they dont it throws an error
    def create
    Pizza.find(params[:pizza_id])
    Restaurant.find(params[:restaurant_id])
    new_restaurant_pizza = RestaurantPizza.create(allowed_params)
    if new_restaurant_pizza.valid?
    render json: new_restaurant_pizza.pizza, except: [:created_at,:updated_at]
    else
    render json: {error:"Validation errors"}, status:422
    end
    end

    
    private

    def allowed_params
        params.permit(:price, :restaurant_id, :pizza_id)
    end

    def error_message
        render json: {error:"Validation errors"}, status:422
    end


end
