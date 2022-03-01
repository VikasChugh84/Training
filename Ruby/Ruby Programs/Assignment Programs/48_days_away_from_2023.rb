# Given a date, return how many days date is away from 2023 (end date not included). date will be in mm/dd/yyyy format.

require 'date'

def days_count(date)
  pro_date = Date.strptime(date, '%m/%d/%Y')
  com_date = Date.new(2023,01,01)
  return (com_date - pro_date).to_i
end

print "Enter date in mm/dd/yyyy: "
date = gets.chomp!
puts "Days away are: #{days_count(date)}"