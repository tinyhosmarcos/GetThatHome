class SessionsController < ApplicationController
  skip_before_action :authorize, only: :create

  def create
    user = User.find_by(email: params[:email])
    if user&.authenticate(params[:password])
      user.regenerate_token
      render json: { token: user.token, name: user.name }
    else
      render json: { unauthorized: "Invalid email or password" }, status: :unauthorized
    end
  end
end