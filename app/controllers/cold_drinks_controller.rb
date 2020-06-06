class ColdDrinksController < ApplicationController

    def index
        @cold_drinks = ColdDrink.all
    end

    def show
        @cold_drink = ColdDrink.find(params[:id])
    end

    def new
    end

    def create
        @cold_drink = ColdDrink.new(cold_drink_params)
 
        @cold_drink.save
        redirect_to @cold_drink
    end
    private
    def cold_drink_params
        params.require(:cold_drink).permit(:name, :description)
    end
end
