class CoffeeDrinksController < ApplicationController
    def index
      @coffee_drinks = CoffeeDrink.all
    end
    
    def show
      @coffee_drink = CoffeeDrink.find(params[:id])
    end

    def new
      @coffee_drink = CoffeeDrink.new
    end

    def edit
      @coffee_drink = CoffeeDrink.find(params[:id])
    end

    def create
        @coffee_drink = CoffeeDrink.new(coffee_drink_params)
 
        if @coffee_drink.save
          redirect_to @coffee_drink
        else
          render 'new'
        end
    end

    def update
      @coffee_drink = CoffeeDrink.find(params[:id])
     
      if @coffee_drink.update(coffee_drink_params)
        redirect_to @coffee_drink
      else
        render 'edit'
      end
    end

    def destroy
      @coffee_drink = CoffeeDrink.find(params[:id])
      @coffee_drink.destroy
   
      redirect_to coffee_drinks_path
    end

    private
    def coffee_drink_params
        params.require(:coffee_drink).permit(:name, :description)
    end
end
