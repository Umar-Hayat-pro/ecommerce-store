class Admin::OrdersController < AdminController
  before_action :authenticate_user!
  before_action :check_admin_or_order_manager

  def index
    @orders = Order.all
  end

  private

  def check_admin_or_order_manager
    # Check if the current user is either an admin or an order_manager
    unless current_user.admin? || current_user.role == "orders_manager"
      redirect_to root_path, alert: "Access denied!"  # You can replace the alert message as needed
    end
  end
end
