class Flat < ApplicationRecord
  validates :name, :address, :price_per_night, presence: true
end
