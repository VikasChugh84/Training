#Find the reverse of integer number

class Reverse

  def reverse_number(x)
    int_length = x.to_s.length
  	z = []
    (int_length).times.each do |e|
      y = x%10
      x = (x-y)/10
      z << y
    end
    puts z.join.to_i
  end

  def array_logic(x)
  	 y = x.to_s.chars
     z = y.grep(/\d+/, &:to_i).reverse.join.to_i
     puts z
  end
end


Int = Reverse.new
#Int.array_logic(5879837)
Int.reverse_number(93789)






