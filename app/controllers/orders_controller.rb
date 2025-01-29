class OrdersController < ApplicationController
  before_action :authenticate_user!

  def new
    @product           = Product.find(params[:id])
    @order             = Order.new
  end

  def create
    @order             = current_user.orders.new(order_params)
    @order.product_id  = params[:product_id]

    if @order.save
      redirect_to user_orders_path, notice: "Order was made successfully."
    else
      render :edit
    end
  end

  private

  def order_params
    params.expect(order: [ :quantity ])
  end
end
