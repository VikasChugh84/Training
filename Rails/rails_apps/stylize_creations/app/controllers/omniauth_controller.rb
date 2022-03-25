class OmniauthController < Devise::OmniauthCallbacksController

  def facebook
    @user = User.create_from_provider_data(request.env["omniauth.auth"])
    if @user.persisted?
      sign_in_and_redirect @user
    else
      flash[:error] = "Problem with signing in through facebook, register from link"
      redirect_to new_user_registration_url
    end
  end

  def github
    @user = User.create_from_provider_data(request.env["omniauth.auth"])
    if @user.persisted?
      sign_in_and_redirect @user
    else
      flash[:error] = "Problem with signing in through facebook, register from link"
      redirect_to new_user_registration_url
    end
  end

  def google_oauth2
    @user = User.create_from_provider_data(request.env["omniauth.auth"])
    if @user.persisted?
      sign_in_and_redirect @user
    else
      flash[:error] = "Problem with signing in through facebook, register from link"
      redirect_to new_user_registration_url
    end
  end

  def failure
    flash[:error] = "Problem with signing in through facebook, register from link"
    redirect_to new_user_registration_url
  end

end
