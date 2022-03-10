class Book < ApplicationRecord
  belongs_to :author
  #belongs_to :writer, class_name: 'Author', foreign_key: 'author_id'
  has_many :chapters
end
