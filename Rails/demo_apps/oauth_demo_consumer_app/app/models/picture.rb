class Picture < ApplicationRecord
  # Relationships
  belongs_to :imageable, polymorphic: true
end
