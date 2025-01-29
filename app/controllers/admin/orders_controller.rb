  class Admin::OrdersController < AdminController
    before_action :authenticate_user!
    before_action :check_admin

    def index
      @orders = Order.all
    end

    private

    def check_admin
      # Add your logic to check if the user is an admin
      redirect_to root_path, alert: "Access denied" unless current_user.admin?
    end
  end
