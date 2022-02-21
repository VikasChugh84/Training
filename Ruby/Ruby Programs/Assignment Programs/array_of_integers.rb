# Create a function that takes an array of strings and integers, and filters out the array so that it returns 
# an array of integers only.

class Logic
  def mix_arr(arr)
  	int_arr = []
  	arr.each do |i|
  	  if i.class == Integer
  	  	int_arr << i
  	  end
  	end
    puts int_arr
  end

  def using_method(arr)
  	arr = arr.filter{|i| i.is_a? Integer} 
  	# arr.select{|i| i.is_a? Integer} 
  	# select and filter function both returns the new array contains values of class Integer.
    puts arr

  	# arr = arr.map{|i| i.is_a? Integer} 
  	# arr.collect{|i| i.is_a? Integer} 
  	# map and collect function both returns the new array contains boolean true or false instead of their values.
  	# puts arr

  	# arr = arr.grep(Integer)
  	# grep concept is search and filter the specific index mentioned in argument.
  	# puts arr
  end
end

code = Logic.new
code.mix_arr([2,4,'vi',45,'mh',543])
#code.using_method([2,4,'vi',45,'mh',543])
