# A distinct string is a string that is present only once in an array. Given an array of strings arr, and an integer
# k, return the kth distinct string present in arr. If there are fewer than k distinct strings, return an empty
# string "".
# Note that the strings are considered in the order in which they appear in the array.

# Input arr = ["e",d","b","a","c","b","c","a"]

# Approach : fetch the distinct string first and then kth position

class Practice
  def fetch_distinct_string(k)
    arr = ["e","d","b","a","c","b","c","a"]
    arr_dis_elem = arr.reject{|x| arr.count(x)>1}
    puts arr_dis_elem[k]
  end
end

code = Practice.new
code.fetch_distinct_string(1)