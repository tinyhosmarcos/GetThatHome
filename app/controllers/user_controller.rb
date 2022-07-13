class UserController < ApplicationController
  skip_before_action :authorize
  # only: :index
  
  def index
    @users = User.all
    render json: @users
    # , only: [name, email, phone]
  end
  def show
    @user = User.find(params[:id])
    render json: @user
    # , only: [name, email, phone]
  end
end