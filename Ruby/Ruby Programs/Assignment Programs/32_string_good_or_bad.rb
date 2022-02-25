# Given a string s, return true if s is a good string, or false otherwise. A string s is good if all the characters
# that appear in s have the same number of occurrences (i.e., the same frequency).

# Input - "racecare"

# output - In above string we see every alphabet is 2 times means its good string.

class Practice
  def fetch_good_string(str)
  	arr = str.split('').sort
  	#["a", "a", "c", "c", "e", "e", "r", "r"]
  	hs = arr.inject(Hash.new(0)) { |key, val| key[val] += 1 ;key}
  	# This will create new hash with keys and their count in array
  	# {"a"=>2, "c"=>2, "e"=>2, "r"=>2}
  	val_arr = []
    val_arr = hs.values
    print val_arr
    if val_arr.map{|i| i.even?}.all? true
      return true
    else
      return false
    end
  end
end

code = Practice.new
puts code.fetch_good_string("racecare")