class Api::V1::LocationsController < ApplicationController
  before_action :location_params_permit, except: :index, except: :show
  

  include ErrorHandling

  def index
    @location = Location.all
    render json: @location
  end

  def show
    @location = Location.find(params[:id])
  	render json: @location, status: 200
  end

  def create
    @location = Location.new(name: params[:location_name])
    if params.include? "recording_temp" && "recording_status"
      @recording = @location.recordings.new(temp: params[:recording_temp], status: params[:recording_status])
    end 
    if !@location.nil? && !@recording.nil?
      if @location.save && @recording.save 
        render json: {message: "Location successfully saved" , status: 201}
      else
        render :json => { :errors => @location.errors.full_messages.last, status: 204 }
      end
    else
      render json: {errors: "Object must contain all the values" , status: 204}
    end
  end

  def edit
    @location = Location.where(name: params[:location_name])
    @location.update(name: "Canada")
    render json: {message: "Location updated successfully" , status: 201}
  end

  def update
    @location = Location.find(params[:id])
    @location.update(name: params[:location_name]) if ![:location_name].blank?
    if !params[:recording_temp].blank? && !params[:recording_status].blank?
      @location.recordings.update(temp: params[:recording_temp], status: params[:recording_status]) 
    end
    render json: {message: "Location attributes successfully updated" , status: 201}
  end

  def destroy
    @location = Location.where(name: params[:location_name])
    @location.destroy_all
    render json: {message: "Location removed from database" , status: 200}
  end

  private

  def location_params_permit
    params.permit(:location_name, :recording_temp, :recording_status)
  end

end
