class Category < ApplicationRecord
  # Relationships
  has_many :products
  has_many :pictures, as: :imageable

  # Validations
  validates :name, presence: true 
end
