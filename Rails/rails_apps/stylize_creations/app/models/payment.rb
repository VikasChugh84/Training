class Payment < ApplicationRecord
  # Relationships
  belongs_to :order

  # Validations
  validates :amount_received, :received_on, presence: true 
end
