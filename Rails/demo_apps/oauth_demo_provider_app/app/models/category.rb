class Category < ApplicationRecord
  # Relationships
  has_many :products

  # Validations
  validates :name, presence: true 
end
