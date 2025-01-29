class OrdersController < ApplicationController
  before_action :authenticate_user!
  def create
    @product = Product.find(params[:product_id])
    @order   = current_user.orders.create(product: @product)

    if @order.save
      redirect_to orders_path(@order), notice: "Order Placed Successfully."
    else
      redirect to product_path(@product), alert: "Something went wrong try again later."
    end
  end
end
