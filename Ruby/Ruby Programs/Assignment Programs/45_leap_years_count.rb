# Given a range of years as a string, return the number of leap years there are within the range (inclusive).

require 'date'

def find_leap_years(str)
  arr = str.split('..').map{|d| Integer(d)}
  range = arr[0]..arr[1]
  leap_arr = []
  range.each do |i|
    if Date.leap?(i)
      leap_arr << i
    end
  end
  return leap_arr.size
end

puts "#{find_leap_years("1990..2010")}"
