class HomeController < ApplicationController
  def index
    if !current_user.nil?
      @user = current_user
      @orders = @user.orders
    end
  end
end
