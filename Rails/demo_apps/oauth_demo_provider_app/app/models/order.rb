class Order < ApplicationRecord
  # Relationships
  belongs_to :user
  belongs_to :product
  has_many :payments

  # Validations
  validates :order_number, :amount, :placed_on, presence: true 
  validates :order_number, uniqueness: true
end
