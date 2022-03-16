class Api::V1::LocationsController < ApplicationController
  #before_action :set_location, except: :create

  def index
    @location = Location.all
    render json: @location
  end

  def show
    @location = Location.find(params[:id])
  	render json: @location, status: 200
  end

  def create
    @location = Location.new(location_params_permit)
    if @location.save
      redirect_to api_v1_locations_path
    end
  end

  private

  #def set_location
  	#@location = Location.find(params[:id])
  #end

  def location_params_permit
    params.permit(:name)
  end

end
