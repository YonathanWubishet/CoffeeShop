class SnacksController < ApplicationController

    def index
        @snacks = Snack.all
      end
      
      def show
        @snack = Snack.find(params[:id])
      end

    def new
    end

    def create
        @snack = Snack.new(snack_params)
 
        @snack.save
        redirect_to @snack
    end
    private
    def snack_params
        params.require(:snack).permit(:name, :description)
    end
end
