=begin
  Write a function that, given a date (in the format MM/DD/YYYY), returns the day of the week as a string.
  Each day name must be one of the following strings: "Sunday", "Monday", "Tuesday", "Wednesday",
  "Thursday", "Friday", or "Saturday".
=end

require 'date'

def fetch_day(date)
  date = Date.strptime(date, '%m/%d/%Y')
  puts date
  return date.strftime("%A")
end

print "Enter date: "
date = gets.chomp!
puts "day of week: #{fetch_day(date)}"

