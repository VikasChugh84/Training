# Create a function that takes time1 and time2 and return how many hours and minutes have passed
# between the two times.

require 'time'

def calculate_minutes(t1,t2)
  minutes = ((t2-t1) * 24 * 60).to_i
  return minutes
end

t1 = DateTime.httpdate('Sat, 21 Feb 2022 04:05:06 GMT')
t2 = t1 + 3
puts "#{calculate_minutes(t1,t2)}"



