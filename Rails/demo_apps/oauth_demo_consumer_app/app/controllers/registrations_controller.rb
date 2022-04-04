class RegistrationsController < Devise::RegistrationsController
  
  private

  def sign_up_params
    params.require(:user).permit(:name, :phone_number, :role_id)
  end

  def account_update_params
    params.require(:user).permit(:name, :phone_number, :role_id)
  end
end

