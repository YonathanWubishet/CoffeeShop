class MagazinesController < ApplicationController

    def index
        @magazines = Magazine.all
      end
      
      def show
        @magazine = Magazine.find(params[:id])
      end

    def new
    end

    def create
        @magazine = Magazine.new(magazine_params)
 
        @magazine.save
        redirect_to @magazine
    end
    private
    def magazine_params
        params.require(:magazine).permit(:name, :description)
    end
end
