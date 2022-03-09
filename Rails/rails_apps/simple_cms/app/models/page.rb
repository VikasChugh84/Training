class Page < ApplicationRecord
  validates :size, inclusion: { in: %w(small medium large),
    message: "%{value} is not a valid size" }
  #validates_with Subject, fields: [:name]
  after_destroy :log_destroy_action

  def log_destroy_action
    puts 'Corresponding Subject destroyed'
  end
end
