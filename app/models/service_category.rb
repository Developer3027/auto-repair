class ServiceCategory < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :services
end
