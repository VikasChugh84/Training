# Given the parameters day, month and year, return whether that date is a valid date.
# is_valid_date(35, 2, 2020) ➞ false
# February doesn't have 35 days.

require 'date'

class Practice
  def check_date_valid(d,m,y)
  	if Date.valid_date?(y,m,d)
  	  return true
  	else
  	  return false
  	end
  end
end

code = Practice.new
puts code.check_date_valid(30,13,2010)