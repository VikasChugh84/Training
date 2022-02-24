# Given an integer array nums, find a contiguous non-empty subarray within the array that has the largest
# product, and return the product. Elements can also be negative numbers.
# Input: nums = [2,3,-2,4]
# Output: 6
# Explanation: [2,3] has the largest product 6.

class Practice

  def fetch_largest_product(arr)
    arr = arr.grep(/\d+/, &:to_i)
    sub_arr = []
    (1...arr.size).each do |i|
      sub_arr << arr.permutation(i).to_a
    end
    sub_arr = sub_arr.reduce(:concat)
    pro_arr = []
    sub_arr.each do |i|
      pro_arr << i.inject(:*)
    end
    lar_elem = pro_arr.max
    lar_elem_ind = pro_arr.each_with_index.max[1]
    sub_arr_ind = sub_arr.at(lar_elem_ind)
    puts "#{sub_arr_ind} has the largest product #{lar_elem}"
  end

end

code = Practice.new
code.fetch_largest_product(['2','3','-2','4'])
