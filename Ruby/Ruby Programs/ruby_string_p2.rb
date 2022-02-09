# Filter Strings from Array.

# Create a function that takes an array of strings and integers, and filters out the array so that it returns an array of integers only.

class Str

  def filter_arr_int(str)
  	str_arr = str.chars
  	arr = str_arr.grep(/\d+/, &:to_i)
  	# grep method used to find like select, filter
  	# \d+ is the regex that matches all the integers with the string and return the integer 
  	# &:to_i convert strings to integer "1".to_i = 1
  	puts arr
  end

end

x = Str.new

x.filter_arr_int("1238hbshw535")

