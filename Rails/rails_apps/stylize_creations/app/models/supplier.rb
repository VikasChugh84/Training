class Supplier < ApplicationRecord
  # Relationships
  has_many :purchase_records
  has_many :products
  
  # Validations
  validates :name, :phone_number, :city presence: true 
  validates :name, uniqueness: true
end
