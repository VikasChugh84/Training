# Write a function which takes square matrix mat, return the sum of the matrix diagonals.
# Only include the sum of all the elements on the primary diagonal and all the elements on the secondary
# diagonal that are not part of the primary diagonal.

# Input -   1 2 3 4
#           5 6 7 8
#           4 3 2 1
#           8 7 6 5

# Output - Principal Diagonal - (1 + 6 + 2 + 5) - 14
#          Seconday Diagonal  - (4 + 7 + 3 + 8) - 22 

class Practice
  def fetch_sum(arr_1,arr_2,arr_3,arr_4)
  	arr_1 = arr_1.grep(/\d+/, &:to_i)
  	arr_2 = arr_2.grep(/\d+/, &:to_i)
  	arr_3 = arr_3.grep(/\d+/, &:to_i)
  	arr_4 = arr_4.grep(/\d+/, &:to_i)
  	pro_arr = []
  	pro_arr << arr_1 << arr_2 << arr_3 << arr_4
  	prim_arr = []
  	sec_arr = []
  	n = 0
  	i = 0
  	j = -1
  	pro_arr.size.times do |e|
      prim_arr << pro_arr[i][n]
      sec_arr << pro_arr[i][j]
      i = i +1
      n = n+1
      j = j-1
  	end
  	puts prim_arr.sum
  	puts sec_arr.sum
  end
end

code = Practice.new
code.fetch_sum(['1','2','3','4'],['5','6','7','8'],['4','3','2','1'],['8','7','6','5'])
