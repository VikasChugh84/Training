class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  #before_action :authenticate_user!
  
  def after_sign_in_path_for(resource)
    request.env['omniauth.origin'] || root_path
  end
  
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :phone_number, :address, :city, :state, :pincode, :date_of_birth, :role_id, :email, :password, :password_confirmation) }
    devise_parameter_sanitizer.permit(:sign_in) { |u| u.permit(:email, :password) }
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :phone_number, :address, :city, :state, :pincode, :date_of_birth, :role_id, :email, :current_password, :password, :password_confirmation) }
  end
end
