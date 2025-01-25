class Admin::TenantsController < AdminController
  def index
  @tenants = User.all
  end
end
