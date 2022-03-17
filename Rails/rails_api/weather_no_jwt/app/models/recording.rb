class Recording < ApplicationRecord
  belongs_to :location
  validates :temp, presence: { message: "Location must contain its temperature" }
  validates :status, presence: { message: "Location weather is mandatory to define" }
end
