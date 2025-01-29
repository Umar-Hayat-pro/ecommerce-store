class HomeController < ApplicationController
  before_action :authenticate_user!, only: [ :profile ]
  def index; end
  def about; end
  def contact; end

  def profile
    @user = current_user
    @orders = Order.where(user_id: @user.id)
   end

   def show_order
     @user = current_user
     @orders = Order.where(user_id: @user.id)
   end
end
