# Given an integer array and a positive integer k, count all distinct pairs with differences equal to k.

# Input - [0, 4, 8, 12, 16, 20]

# Output - 4 Pairs - [0, 4], [4, 8], [8, 12], [12, 16], [16, 20] 

class Practice
  def fetch_pair(k)
    arr = [0, 4, 8, 12, 16, 20] 
    arr = arr.permutation(2).to_a
    pro_arr = []
    arr.each do |i|
      pro_arr << i.inject(:-)
    end
    index_arr = []
    (0...pro_arr.size).each do |i|
      if pro_arr[i] == k
        index_arr << i
      end
    end
    final_result = []
    index_arr.each do |i|
      final_result << arr.values_at(i)
    end
    print final_result.reduce(:concat)
  end
end

code = Practice.new
code.fetch_pair(4)
