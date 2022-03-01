=begin
  If today was Monday, in two days, it would be Wednesday.
  Create a function that takes in an array of days as input and the number of days to increment by. Return an
  array of days after n number of days has passed.

  after_n_days(["Thursday", "Monday"], 4) ➞ ["Monday", "Friday"]
=end

require 'date'

def fetch_days_arr(int)
  arr_date = []
  i = Date.today
  int.times do
    arr_date << i.succ
    i = i+1
  end
  pro_arr = []
  arr_date.each do |i|
    pro_arr << i.strftime("%A")
  end
  return pro_arr.last
end

print "Enter input: "
int = gets.chomp!.to_i
puts "After #{int} days it will be #{fetch_days_arr(int)}"

