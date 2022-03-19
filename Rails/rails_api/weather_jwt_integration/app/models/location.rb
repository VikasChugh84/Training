class Location < ApplicationRecord
  has_many :recordings, dependent: :destroy 
  validates :name, presence: { message: "Location can't be blank" }
end
