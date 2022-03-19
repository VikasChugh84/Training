class Api::V1::UserTokenController < Knock::AuthTokenController
  def entity
  	User
  end
end
