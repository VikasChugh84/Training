class Author < ApplicationRecord
  #has_many :books, dependent: :destroy
  #has_many :books, dependent: :destroy, inverse_of: 'writer'
  # dependant specifies if author destroyed..all his books automatically destroyed.
  #has_many :books, -> { where processed: true } 
  has_many :books, -> { includes :chapters }, dependent: :destroy, before_add: [:calculate_shipping_charges]


  def calculate_shipping_charges(book)
    book.page_count = 45
  end

end
