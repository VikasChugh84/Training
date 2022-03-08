class Page < ApplicationRecord
  validates :size, inclusion: { in: %w(small medium large),
    message: "%{value} is not a valid size" }
  validates_with Subject, fields: [:name]
end
