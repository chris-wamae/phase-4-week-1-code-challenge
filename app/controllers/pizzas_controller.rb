class PizzasController < ApplicationController
    protect_from_forgery

    def index
     all_pizzas = Pizza.all
     render json: all_pizzas
    end

    def create 
    new_pizza = Pizza.create(allow_params)
    render json: new_pizza
    end

    private 
    
    def allow_params
        params.permit(:name,:ingredients)
    end

end
