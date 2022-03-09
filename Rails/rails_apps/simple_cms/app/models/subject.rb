class Subject < ApplicationRecord
  has_many :pages, dependent: :destroy
  #validates_associated :pages

  #def validate(page)
    #if options[:fields].any? { |field| page.send(field) == "test" }
      #record.errors.add :base, "This is test subject"
    #end
  #end

1end
