class PropertySerializer
  include JSONAPI::Serializer
  attributes :operation_type, :address, :monthly_price, 
            :maintenance, :property_type, :bedrooms_count,
            :bathrooms_count, :area, :pets_allowed,
            :description, :active_published,
            :user_id, :created_at, :updated_at, :latitud, :longitud,
            :image, :image_url
end
