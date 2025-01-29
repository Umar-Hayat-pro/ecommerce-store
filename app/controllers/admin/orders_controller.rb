class OrdersController < AdminController
  before_action :authenticate_user!

  def index
    @order = Order.all
  end

  def update
    @order = Order.find(params[:id])
    if @order.update(order_params)
      redirect_to admin_orders_path, notice: "Order Updated Successfully."
    else
      render :edit
    end
  end

  private
  def order_params
    params.expect(order: [ :status ])
  end
end
