class PurchaseRecord < ApplicationRecord
  # Relationships
  belongs_to :supplier
  
  # Validations
  validates :amount, :bill_number, :purchase_date, presence: true 
  validates :bill_number, uniqueness: true
end
