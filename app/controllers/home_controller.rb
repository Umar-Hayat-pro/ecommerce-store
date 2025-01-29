class HomeController < ApplicationController
  before_action :authenticate_user!, only: [ :profile ]
  def index; end
  def about; end
  def contact; end

  def profile
    @user = current_user
   end
end
