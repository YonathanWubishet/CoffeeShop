class OtherItemsController < ApplicationController

    def index
        @other_items = OtherItem.all
      end
      
      def show
        @other_item = OtherItem.find(params[:id])
      end

    def new
      @other_item = OtherItem.new
    end

    def edit
      @other_item = OtherItem.find(params[:id])
    end

    def create
        @other_item = OtherItem.new(other_item_params)
 
        if @other_item.save
        redirect_to @other_item
      else
        render 'new'
      end
    end

    def update
      @other_item = OtherItem.find(params[:id])
     
      if @other_item.update(other_item_params)
        redirect_to @other_item
      else
        render 'edit'
      end
    end

    def destroy
      @other_item = OtherItem.find(params[:id])
      @other_item.destroy
   
      redirect_to other_items_path
    end

    private
    def other_item_params
        params.require(:other_item).permit(:name, :description)
    end
end
