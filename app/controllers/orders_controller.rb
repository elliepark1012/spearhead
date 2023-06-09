class OrdersController < ApplicationController
    def create
        order = Order.create(order_params)
        render json: order, status: :created
    end

    private 

    def order_params
        params.permit(:hat_id, :user_id, :price)
    end 
end 


