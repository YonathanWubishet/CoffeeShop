class CoffeeBeansController < ApplicationController

    def index
        @coffee_beans = CoffeeBean.all
      end
      
      def show
        @coffee_bean = CoffeeBean.find(params[:id])
      end

    def new
    end

    def create
        @coffee_bean = CoffeeBean.new(coffee_bean_params)
 
        @coffee_bean.save
        redirect_to @coffee_bean
    end
    private
    def coffee_bean_params
        params.require(:coffee_bean).permit(:name, :description)
    end
end
