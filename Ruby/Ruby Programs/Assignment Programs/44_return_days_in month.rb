# Create a function that takes the month and year (as integers) and returns the number of days in that month.

require 'date'

def fetch_number_of_days(month,year)
  # To retrieve date
  # x = "#{year}-#{month}"
  # date = Date.strptime(x, '%Y-%d')
  date = Date.new(year, month, -1)
  return date.day 
end

print "Enter month with in 1 to 12:"
month = gets.chomp!.to_i
print "Enter year: "
year = gets.chomp!.to_i
puts "#{fetch_number_of_days(month,year)}"