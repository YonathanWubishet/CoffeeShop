class OtherItemsController < ApplicationController

    def index
        @other_items = OtherItem.all
      end
      
      def show
        @other_item = OtherItem.find(params[:id])
      end

    def new
    end

    def create
        @other_item = OtherItem.new(other_item_params)
 
        @other_item.save
        redirect_to @other_item
    end
    private
    def other_item_params
        params.require(:other_item).permit(:name, :description)
    end
end
