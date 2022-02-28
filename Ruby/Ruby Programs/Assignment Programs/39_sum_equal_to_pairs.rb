=begin 
Given two unsorted arrays A of size N and B of size M of distinct elements, the task is to find all pairs from
both arrays whose sum is equal to X.

Input : arr1 = [1, 2, 4, 5, 7] 
        arr2 = [5, 6, 3, 4, 8]  
        x = 9
Output : 1 8
         4 5
         5 4
=end

def find_sum(arr_1, arr_2, int)
  pro_arr = []
  (0..4).each do |i|
    (0..4).each do |n|
      pro_arr <<  [arr_1[i] , arr_2[n]]
      n = n+1
    end
  end
  hs = {}
  (0...pro_arr.length).each do |i|
    hs[pro_arr[i]] = [pro_arr[i].sum]
  end
  hs.each do |key,value|
    if value == [int]
      print key
    end
  end
end

arr_1 = [1, 2, 4, 5, 7] 
arr_2 = [5, 6, 3, 4, 8]
print "Enter X: "
int = gets.chomp!.to_i
"Pairs are: #{find_sum(arr_1, arr_2, int)}"
