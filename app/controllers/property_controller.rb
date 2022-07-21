class PropertyController < ApplicationController
  skip_before_action :authorize
  # , only: :index

  def index
    @properties = Property.where.not(user: current_user)
    # render json: @properties, except: [:created_at, :updated_at,:active_published, :user_id],
    #                           methods: [:owner, :images, :image_url]
    render json: Property.all, each_serializer: PropertySerializer, root: false, methods: [:image_url]
  end

  def show
    @property = Property.find(params[:id])
    render json: @property, except: [:created_at, :updated_at,:active_published, :user_id],
                              methods: [:owner, :images]
  end
  
  def create
    property = Property.new(property_params)
    if property.save
      render json: {status: 'SUCCESS', message: 'Saved property', data: property}, status: :ok
    else
      render json: {status: 'ERROR', message: 'Property not saved', data: property.errors}, status: :unprocessable_entity
    end
  end

  def destroy
    property = Property.find(params[:id])
    render json: {status: 'SUCCESS', message: 'Deleted property', data: property}, status: :ok
  end

  ### falta probar
  def update
    property = Property.find(params[:id])

    if property.update!(property_params)
      render json: { status: 'SUCCESS', message: 'Updated property', data: property }, status: :ok
    else
      render json: { status: 'ERROR', message: 'Property not updated', data: property.errors }, status: :unprocessable_entity
    end
  end

  ### falta probar
  private
  def property_params

    params.require(:property).permit(
      :operation_type, :address, :monthly_price, :maintenance, :property_type,
      :bedrooms_count, :bathrooms_count, :area, :pets_allowed, :description,
      :active_published, :user_id, :image)
  end
end
