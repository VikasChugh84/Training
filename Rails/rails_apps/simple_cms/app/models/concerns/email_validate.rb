require 'mail'

module EmailValidate
  extend ActiveSupport::Concern
  
  class EmailValidator < ActiveModel::EachValidator
    def validate_each(record, attribute, value)
    if value.include? "@gmail.com"
      record.errors.add attribute, (options[:message] || "gmail not accepted")
    else
      unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
        record.errors.add attribute, (options[:message] || "is not an email")
      end
    end
  end
  end
end