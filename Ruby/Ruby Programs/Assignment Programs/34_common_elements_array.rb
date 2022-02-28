# Given two integer arrays nums1 and nums2, return an array of their intersection. Each element in the
# result must be unique and you may return the result in any order.

# Input - arr_1 = [4,9,5]
# Input - arr_2 = [9,4,9,8,4]

# Output - [9,4]

class Practice
  def retrieve_common_elements
    arr_1 = [4,9,5]
    arr_2 = [9,4,9,8,4]
    print arr_1 & arr_2
  end
end

code = Practice.new
code.retrieve_common_elements



