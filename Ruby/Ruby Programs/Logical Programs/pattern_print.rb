
# print the following pattern
# 5
# 5 4
# 5 4 3
# 5 4 3 2
# 5 4 3 2 1

class Pattern
  def print_seq(x)
    arr = []
    while x >= 1
      arr << x
      print "#{arr.join.to_i}\n"
      x = x-1
    end
  end

 
end

Pat = Pattern.new
Pat.print_seq(5)




