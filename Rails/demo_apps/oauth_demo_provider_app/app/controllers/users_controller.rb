class UsersController < ApplicationController
  def index
  end

  def show
    user = User.find(params[:id])
    respond_to do |format|
      format.html
      format.pdf { render pdf: generate_pdf(user) }
    end
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

  def download_pdf
    user = User.find(5)
    send_data generate_pdf(user),
              filename: "#{user.name}.pdf",
              type: "application/pdf"
  end

  private
    def user_params_permit
      params.require(:user).permit(:name, :phone_number, :email, :address, 
      :city, :state, :pincode, :date_of_birth)
    end

    def generate_pdf(user)
      Prawn::Document.new do
        text user.name, align: :center
        text "Address: #{user.city}"
        text "Email: #{user.email}"
      end.render 
    end

end
