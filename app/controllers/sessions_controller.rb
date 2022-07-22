class SessionsController < ApplicationController
  skip_before_action :authorize

  def create
    user = User.find_by(email: params[:email])
    if user&.authenticate(params[:password])
      user.regenerate_token
      render json: { token: user.token, email: user.email, profile_type: user.profile_type }
    else
      render json: { unauthorized: "Invalid email or password" }, status: :unauthorized
    end
  end

  def destroy
    current_user.invalidate_token
    head :ok
  end
end