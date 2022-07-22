class StatusesController < ApplicationController
  skip_before_action :authorize


  def create
    status = Status.new(status_params)
    if status.save
      render json: {status: 'SUCCESS', message: 'Saved status', data: status}, status: :ok
    else
      render json: {status: 'ERROR', message: 'Status not saved', data: status.errors}, status: :unprocessable_entity
    end
  end

  def index
    @statuses = User.find(params[:id]).status
    render json: @statuses, except: [:created_at, :updated_at ]
  end

  def destroy
    status = Status.find(params[:id])
    status.destroy
    render json: {status: 'SUCCESS', message: 'Deleted status', data: status}, status: :ok
  end

  private
  def status_params
    params.require(:status).permit(
      :user_id, :property_id, :status_type)
  end
end