# Given the month and year as numbers, return whether that month contains a Friday 13th.

require 'date'

def fetch_day(month,year)
  date = Date.new(year,month,13)
  if date.friday?
    return true
  else
    return false
  end
end

print "Enter month: "
month = Integer(gets)
print "Enter year: "
year = Integer(gets)
puts "#{fetch_day(month,year)}"
