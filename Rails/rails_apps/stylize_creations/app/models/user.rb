class User < ApplicationRecord
  extend Devise::Models
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable, 
         :omniauth_providers => [:facebook, :github, :google_oauth2]

  def self.create_from_provider_data(provider_data)
    where(provider: provider_data.provider, uid: provider_data.uid).first_or_create do |user|
      user.email = provider_data.info.email
      user.password = Devise.friendly_token[0, 20]
    end
  end
  # Relationships
  belongs_to :role, optional: true
  has_many :reviews, through: :products
  has_and_belongs_to_many :products
  has_many :orders, through: :products
  has_many :pictures, as: :imageable

  # Validations
  validates :name, :phone_number, :city, :state, :role_id, presence: true 
  validates :phone_number, :email, uniqueness: true
end
