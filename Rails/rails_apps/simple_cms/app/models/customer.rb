class Customer < ApplicationRecord
  has_many :reviews, through: :books
  has_many :orders
  #self.locking_column = :first_name
end
