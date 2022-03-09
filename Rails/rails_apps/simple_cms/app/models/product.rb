class Product < ApplicationRecord
  validates :name, presence: { strict: true }
  validates :description, presence: true

  
  before_validation :ensure_description_is_not_nil
  # Method-1: This method is call before the description validates and check its presence.

  before_validation :normalize_name, on: :create
  # Method-3: This method is called the time we saving the object.

  before_create do
  # Method-2: This method is called before saving the object and do the respective task defined under it.
    self.name = name.capitalize if !name.blank?
  end

  after_save do
  # Method-4: This method will update the description field for running object.
    self.description = "Using after_save callback method"
  end

  before_destroy do
    # Method-5: This method may used to fetch the specific data before destroying the object
    @pro_name = self.name
  end

  after_initialize do |product|
    # Method-6
    puts "New product is Initialized not saved yet!"
  end

  after_find do |product|
    # Method-7 - Say we retrieve the product with some specific id.
    puts "product found!"
  end

  after_touch do |user|
    # Method-8 - When we touch the object in database.
    puts "You have touched an object"
  end

  private
  def ensure_description_is_not_nil
    # Method-1 : Here it is checks for either description is nil or not if found insert the "value" in it 
    # and then it goes back to description validation and check for value
    if description.nil?
      self.description = "default"
    end
  end
  
  def normalize_name
   # Method-3: This method is called and update the name is downcase.
    self.name = name.downcase
  end

end
