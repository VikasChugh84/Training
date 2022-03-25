class User < ApplicationRecord
  extend Devise::Models
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable, 
         :omniauth_providers => [:github]

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
    user.name = auth.info.name
    user.email = auth.info.email
    user.role_id = '4'
    #user.password = Devise.friendly_token[0,20]
    user.password = 'stylize_cr'
    end      
  end
  # Relationships
  belongs_to :role, optional: true
  has_many :reviews, through: :products
  has_and_belongs_to_many :products
  has_many :orders, through: :products
  has_many :pictures, as: :imageable

  # Validations
  validates :name, :email, presence: true 
  validates :email, uniqueness: true
end
