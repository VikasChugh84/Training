class TurboFailureApp < Devise::FailureApp
  def respond
    if request_format == :turbo_stream
      redirect
    else
      super
    end
  end

  def skip_format?
    %w(html turbo_stream */*).include? request_format.to_s
  end
end


# ...
Devise.setup do |config|
  # ...
  
  # ==> Controller configuration
  # Configure the parent class to the devise controllers.
  config.parent_controller = 'TurboDeviseController'
  
  # ...

  # ==> Navigation configuration
  # ...
  config.navigational_formats = ['*/*', :html, :turbo_stream]

  OmniAuth.config.allowed_request_methods = %i[get]

  OmniAuth.config.silence_get_warning = true


  # ...


  #config.omniauth :facebook, "389787955928711", "59b4508ae325e1470177e410383dd671"

  config.omniauth :facebook, Rails.application.credentials.dig(:facebook, :facebook_client_id),
  Rails.application.credentials.dig(:facebook, :facebook_client_secret), scope: 'public_profile,email'

  config.omniauth :github, Rails.application.credentials.dig(:github, :github_client_id),
  Rails.application.credentials.dig(:github, :github_client_secret), scope: 'user,public_repo'

  config.omniauth :google_oauth2, Rails.application.credentials.dig(:google, :google_client_id),
  Rails.application.credentials.dig(:google, :google_client_secret), scope: 'user_info.email,user_info.profile'



  # ==> Warden configuration
  # ...
  config.warden do |manager|
    manager.failure_app = TurboFailureApp
  #   manager.intercept_401 = false
  #   manager.default_strategies(scope: :user).unshift :some_external_strategy
  end
  
  # ...
end