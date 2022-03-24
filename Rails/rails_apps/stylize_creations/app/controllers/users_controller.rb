class UsersController < ApplicationController
  def index
  end

  def show
  end

  def create
  end

  def new
    
  end

  def edit
    
  end
  
  def update
  end

  def destroy
    
  end

  def user_image
  end

  def delete
    
  end

  private
    def user_params_permit
      params.require(:user).permit(:name, :phone_number, :email, :address, 
      :city, :state, :pincode, :date_of_birth)
    end

end
