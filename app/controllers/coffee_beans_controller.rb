class CoffeeBeansController < ApplicationController

    def index
        @coffee_beans = CoffeeBean.all
      end
      
      def show
        @coffee_bean = CoffeeBean.find(params[:id])
      end

    def new
      @coffee_bean = CoffeeBean.new
    end

    def edit
      @coffee_bean = CoffeeBean.find(params[:id])
    end

    def create
        @coffee_bean = CoffeeBean.new(coffee_bean_params)
 
        if @coffee_bean.save
        redirect_to @coffee_bean
      else
        render 'new'
      end
    end

    def update
      @coffee_bean = CoffeeBean.find(params[:id])
     
      if @coffee_bean.update(coffee_bean_params)
        redirect_to @coffee_bean
      else
        render 'edit'
      end
    end

    def destroy
      @coffee_bean = CoffeeBean.find(params[:id])
      @coffee_bean.destroy
   
      redirect_to coffee_beans_path
    end

    private
    def coffee_bean_params
        params.require(:coffee_bean).permit(:name, :description)
    end
end
