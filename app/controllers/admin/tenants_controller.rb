class Admin::TenantsController < AdminController
  before_action :check_admin

  def index
    @tenants = User.all
  end

  private

  def check_admin
    redirect_to root_path, alert: "Access denied Nigga!" unless current_user.admin?
  end
end
