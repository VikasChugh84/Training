# Given an array nums. We define a running sum of an array as running Sum[i] = sum( nums[0]...nums[i]).
# Return the running sum of nums.

# Example1: arr = [1,2,3,4]
# How it works = [1,1+2,1+2+3,1+2+3+4]
# Output = [1,3,6,10]

# Example2: arr = [3,1,2,10,1]
# How it works = [3,3+1,3+1+2,3+1+2+10,3+1+2+10+1]
# Output = [3,4,6,16,17]

class Practice
  def sum_of_arr(arr)
  	arr = arr.grep(/\d+/, &:to_i)
  	pro_arr = []
  	(1..arr.count).each do |i|
  	  pro_arr << arr.permutation(i).to_a.first
  	  i = i+1
    end
  	fin_res = []
  	 pro_arr.each do |i|
       fin_res << i.sum
  	end
  	 print fin_res
  end
end

code = Practice.new
code.sum_of_arr(['3','1','2','10','1'])

