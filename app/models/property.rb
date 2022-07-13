class Property < ApplicationRecord
  belongs_to :user
  # has_many_attached :images, dependent: :destroy
  # https://guides.rubyonrails.org/active_storage_overview.html
  validates :address, length: { in: 6..100 }, presence: true
  validates :monthly_price, length: { in: 3..7 }, comparison: { greater_than: 99 }, presence: true
  validates :maintenance, comparison: { greater_than: 20 }, allow_nil: true
  validates :property_type, presence: true
  # # 0: rental, 1: sale
  validates :bedrooms_count, length: { in: 1..2 }, presence: true
  validates :bathrooms_count, length: { in: 1..2 }, presence: true
  validates :area, length: { in: 2..5 }, presence: true
  validates :pets_allowed, allow_blank: true
  validates :description, length: { maximum: 500 }, presence: true
  validates :active_published, presence: true
end
