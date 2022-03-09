class User < ApplicationRecord
  include EmailValidate

  validates :name, presence: { message: "name is mandatory to enter" }
  validates :terms_and_conditions, acceptance: true
  validates :email, confirmation: true
  validates :email_confirmation, presence: true
  validates :email, uniqueness: true, on: :create
  validates :email, presence: true, email: true
  validates :password, confirmation: true, unless: Proc.new { |a| a.password.blank? }
  with_options if: :is_end_user? do |end_user|
    end_user.validates :password, length: { minimum: 10 }
    end_user.validates :email, presence: true
  end

  after_save_commit :log_user_saved_to_db

  private
  def log_user_saved_to_db
    puts 'User was saved to database'
  end

end
