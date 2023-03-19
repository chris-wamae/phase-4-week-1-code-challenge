class PizzasController < ApplicationController
    protect_from_forgery

    def index
     all_pizzas = Pizza.all
     render json: all_pizzas,except: [:created_at,:updated_at]
    end

    def create 
    new_pizza = Pizza.create(allow_params)
    render json: new_pizza, except: [:created_at,:updated_at]
    end

    private 
    
    def allow_params
        params.permit(:name,:ingredients)
    end

end
