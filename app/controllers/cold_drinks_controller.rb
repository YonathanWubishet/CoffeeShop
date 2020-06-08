class ColdDrinksController < ApplicationController

    def index
        @cold_drinks = ColdDrink.all
    end

    def show
        @cold_drink = ColdDrink.find(params[:id])
    end

    def new
        @cold_drink = ColdDrink.new
    end

    def edit
        @cold_drink = ColdDrink.find(params[:id])
      end

    def create
        @cold_drink = ColdDrink.new(cold_drink_params)
 
        if @cold_drink.save
        redirect_to @cold_drink
    else
        render 'new'
      end
    end

    def update
        @cold_drink = ColdDrink.find(params[:id])
       
        if @cold_drink.update(cold_drink_params)
          redirect_to @cold_drink
        else
          render 'edit'
        end
      end

      def destroy
        @cold_drink = ColdDrink.find(params[:id])
        @cold_drink.destroy
     
        redirect_to cold_drinks_path
      end

    private
    def cold_drink_params
        params.require(:cold_drink).permit(:name, :description)
    end
end
