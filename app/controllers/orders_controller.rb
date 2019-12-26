class OrdersController < ApplicationController
    before_action :authenticate_user!

    def index
     
        @orders = Order.all.where(user_id: current_user.id)
        @product = Product.all.where(product_id = params[:product_id])
 
     
      end
    
    def show
       
        @order = Order.find(params[:id])
        @products = @order.products 

      end

    def new 
        @order = Order.new
      
        @products = @order.products 
   

    end 

    def edit
        puts "Order Edit"
        @order = Order.find(params[:id])
        @order.user_id = current_user.id
         
       end

    def update
     order = Order.find(params[:id])
     
     order.user_id = current_user.id
      order.update(params.require(:order).permit(:amount,:user_id,:product_ids => []))


     order.save
      redirect_to order
      end

      def destroy
        Order.find(params[:id]).destroy
      
        redirect_to orders_path
      end
      

    def create  
      
        @order= Order.new(order_params)
        @order.user_id = current_user.id
        @order.save
        redirect_to @order
      end
      private

      def order_params
        params.require(:order).permit(:amount,:user_id,:order_ids,:product_ids => [])
     end

end
