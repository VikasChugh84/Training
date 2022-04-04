class OrdersController < ApplicationController
  before_action :doorkeeper_authorize!

  def index
    render json: current_user.orders
  end

  def show
  end

  def new
  end

  private 

  def current_user
    @current_user = User.find(doorkeeper_token.resource_owner_id)
  end
end
