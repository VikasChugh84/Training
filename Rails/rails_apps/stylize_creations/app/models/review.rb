class Review < ApplicationRecord
  # Relationships
  belongs_to :user
  belongs_to :product
end
