class CoffeeDrinksController < ApplicationController
    def index
      @coffee_drinks = CoffeeDrink.all
    end
    
    def show
      @coffee_drink = CoffeeDrink.find(params[:id])
    end

    def new
    end

    def create
        @coffee_drink = CoffeeDrink.new(coffee_drink_params)
 
        @coffee_drink.save
        redirect_to @coffee_drink
    end
    private
    def coffee_drink_params
        params.require(:coffee_drink).permit(:name, :description)
    end
end
