class Product < ApplicationRecord
  validates :name, presence: { strict: true }
end
