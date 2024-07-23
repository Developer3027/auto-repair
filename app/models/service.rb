class Service < ApplicationRecord
  validates :service_category_id, presence: true
  belongs_to :service_category

  has_rich_text :description
  has_one_attached :image, dependent: :destroy
end
