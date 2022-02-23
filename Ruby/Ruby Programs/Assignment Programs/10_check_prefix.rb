# Given a string s and an array of strings words, determine whether s is a prefix string of words.
# A string s is a prefix string of words if s can be made by concatenating the first k strings in words for some
# positive k no larger than words.length. Return true if s is a prefix string of words, or false otherwise.

# Input  
# str = race
# str_arr_1 = ["racecar"]
# str_arr_2 = ["racetrack"]

# Approach - check the initial elements in array till they are common in both and insert them in new string and then compare it with default string.

# Query - Check either race is perfix of array strings.

class Practice
  def check_prefix(str)
    str_arr_1 = ["r", "a", "c", "e", "c", "a", "r"]
    str_arr_2 = ["r", "a", "c", "e", "t", "r", "a", "c", "k"]
    str_prefix = ''
    str_arr_2.length.times do
      if str_arr_2[0] == str_arr_1[0]
        str_prefix << str_arr_2[0]
  	str_arr_1.shift
  	str_arr_2.shift 
      end
    end
    if str_prefix == str
      return true
    else
      return false
    end
  end
end

code = Practice.new
puts code.check_prefix("race")
