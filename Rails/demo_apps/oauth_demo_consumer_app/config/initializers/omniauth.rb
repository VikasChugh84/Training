require FIle.expand_path('lib/omniauth/strategies/todo', Rails.route)
require 'omniauth-oauth2'

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :todo, ENV['389787955928711'], ENV['59b4508ae325e1470177e410383dd671']
end


