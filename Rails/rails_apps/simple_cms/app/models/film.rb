class Film < ApplicationRecord
  belongs_to :actor
  belongs_to :actress
end
