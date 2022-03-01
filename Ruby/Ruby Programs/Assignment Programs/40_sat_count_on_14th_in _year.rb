# Write a function which takes year and returns how many Saturday 14ths there are in a given year.

# Query is - Is there any saturday in the year that comes on 14th ?

require 'date'

def fetch_sat_days_count(year)
  sat_count = 0
  (1..12).each do |month|
    date = Date.new(year, month, 14)
    sat_count += 1 if date.saturday?
  end
  #return sat_count
  puts sat_count
end

print "Enter Year: "
year = gets.chomp.to_i
#year = Integer (gets)
"Saturdays in: #{fetch_sat_days_count(year)} are"

