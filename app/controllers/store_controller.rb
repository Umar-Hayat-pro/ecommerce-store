class StoreController < ApplicationController
  before_action :authenticate_user!
  def index
    @categories = Category.all
    @products = Product.last(4)
  end
end
