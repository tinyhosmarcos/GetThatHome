class UsersController < ApplicationController
  skip_before_action :authorize, only: :create

  def create
    p user_params
    user = User.create(user_params)
    if user.valid?
      render json: { token: user.token, email: user.email, profile_type: user.profile_type }

    else
      render json: { error: user.errors.full_messages }, status: :unprocessable_entity
    end
  end
  
  private 
    def user_params
      params.require(:user).permit(
        :name, :email, :phone, :profile_type).merge(
          password: params[:password], password_confirmation: params[:password_confirmation])
    end
end