class Admin::TenantsController < AdminController
  before_action :check_admin
  before_action :set_user, only: [:edit, :update, :destroy]  # Add this line

  def index
    @tenants = User.all
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to admin_tenants_path, notice: "User role was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @user.destroy
    redirect_to admin_tenants_path, notice: "User was successfully deleted."
  end

  private

  def set_user
    @user = User.find(params[:id])   # This sets @user to the user found by params[:id]
  end

  def user_params
    params.require(:user).permit(:role)
  end

  def check_admin
    redirect_to root_path, alert: "Access denied" unless current_user.admin?
  end
end
