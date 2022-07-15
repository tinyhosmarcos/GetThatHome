class Property < ApplicationRecord
  belongs_to :user
  # has_many_attached :images, dependent: :destroy
  # https://guides.rubyonrails.org/active_storage_overview.html
  validates :address, length: { in: 6..100 }, presence: true
  validates :monthly_price, length: { in: 3..7 }, comparison: { greater_than: 99 }, presence: true
  validates :maintenance, comparison: { greater_than: 20 }, allow_nil: true
  # validates :property_type, presence: true
  # # 0: rental, 1: sale
  validates :bedrooms_count, length: { in: 1..2 }, presence: true
  validates :bathrooms_count, length: { in: 1..2 }, presence: true
  validates :area, length: { in: 2..5 }, presence: true
  # validates :pets_allowed, allow_blank: true
  # validates :operation_type, allow_blank: true
  validates :description, length: { maximum: 500 }, presence: true

  def owner
    user = User.find(user_id)
    {
      user_id: user.id,
      name: user.name,
      email: user.email,
      phone: user.phone
    }
  end
  # array of 4 urls of images of the property
  def images
    ["https://images.familyhomeplans.com/cdn-cgi/image/fit=scale-down,quality=85/plans/41438/41438-b580.jpg",
    "https://static.dezeen.com/uploads/2020/02/house-in-the-landscape-niko-arcjitect-architecture-residential-russia-houses-khurtin_dezeen_2364_hero-852x479.jpg",
    "https://thumbs.dreamstime.com/b/luxury-big-modern-house-electric-car-luxury-modern-house-electric-car-141295838.jpg"]
  end
end
