class Product < ApplicationRecord
  # Relationships
  belongs_to :category
  belongs_to :supplier
  has_many :reviews, through: :users
  has_and_belongs_to_many :users
  has_many :orders, through: :users
  has_many :pictures, as: :imageable

  # Validations
  validates :name, :price, :code, presence: true 
  validates :code, uniqueness: true
end
