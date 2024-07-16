class Service < ApplicationRecord
  has_rich_text :description
  has_one_attached :image, dependent: :destroy
end
