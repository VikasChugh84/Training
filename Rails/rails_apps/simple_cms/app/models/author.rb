class Author < ApplicationRecord
  has_many :books, dependent: :destroy # dependant specifies if author destroyed..all his books automatically destroyed.
end
