Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['389787955928711'], ENV['59b4508ae325e1470177e410383dd671']
end