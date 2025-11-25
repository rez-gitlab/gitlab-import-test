# frozen_string_literal: true

class AuthenticationService
  def initialize(user)
    @user = user
  end

  def authenticate(password)
    @user&.authenticate(password)
  end

  def generate_token
    JWT.encode({ user_id: @user.id }, Rails.application.secret_key_base)
  end
end
