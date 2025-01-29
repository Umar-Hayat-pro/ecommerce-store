class AdminController < ApplicationController
  before_action :authenticate_user!
  layout "admin"
  def index
    @products = Product.last(4)
    @users    = User.last(4)
  end


end
