class Actor < ApplicationRecord
  has_many :films
  has_many :actress, through: :films
end
