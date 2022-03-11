class Book < ApplicationRecord
  belongs_to :author
  has_many :chapters
  has_many :reviews
  has_and_belongs_to_many :orders, join_table: 'books_orders'
  #belongs_to :writer, class_name: 'Author', foreign_key: 'author_id'
  scope :price, -> { where(price > 1500) }
  scope :views_count, -> { where(views < 50) }

  enum :status, [:shipped, :being_packed, :complete, :cancelled]
end
