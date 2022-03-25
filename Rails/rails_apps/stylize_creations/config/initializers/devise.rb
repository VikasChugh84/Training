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

  config.omniauth :github, '72965c81de107f59043c', '6689c344d388649edbb917675e651195b95a19cd', scope: 'user,public_repo'


  # ==> Warden configuration
  # ...
  config.warden do |manager|
    manager.failure_app = TurboFailureApp
  #   manager.intercept_401 = false
  #   manager.default_strategies(scope: :user).unshift :some_external_strategy
  end
  
  # ...
end