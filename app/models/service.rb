class Service < ApplicationRecord
  # Service must be in a category
  validates :service_category_id, presence: true
  # Service belongs to a category
  belongs_to :service_category

  # Descriptions can be rich text
  has_rich_text :description
  # Service can have an image
  has_one_attached :image, dependent: :destroy
end
