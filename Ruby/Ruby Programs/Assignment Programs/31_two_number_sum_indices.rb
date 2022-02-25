# Given an array of integers nums and an integer target, return indices of the two numbers such that they
# add up to target. You may assume that each input would have exactly one solution, and you may not use
# the same element twice. You can return the answer in any order.

# Input: nums = [2,7,11,15]
#        integer = 13
# output: [0,2]

# Ignore fetch_indices function code in program, this is for personal learning and dealing with hash synax and their loops

class Practice
  def fetch_indices(hs,int)
  	# hs = {:"0"=>2, :"1"=>7, :"2"=>11, :"3"=>15}
  	var = (:"1")
  	hs_arr = []
  	hs.each do |key,value|
  	  if var < (:"4")
  	    x = hs.values_at(var).join.to_i
        hs_arr << hs.values_at(:"0").join.to_i + x
      end
      var = var.succ 
  	end
    hs_arr
  end

  def fetch_integer_offsets(arr,int)
    arr = arr.grep(/\d+/, &:to_i)
    arr = arr.permutation(2).to_a
    pro_arr = []
    arr.each do |i|
      pro_arr << i.sum
    end
    print arr.values_at(pro_arr.index(int.to_i)).reduce(:concat)
  end
end

code = Practice.new
#code.fetch_indices({"0": 2, "1": 7, "2": 11 , "3": 15},'13')
code.fetch_integer_offsets(['2','7','11','15'],'13')



