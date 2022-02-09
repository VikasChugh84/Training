
# Transforming Words into Binary Strings

# Write a function that transforms all letters from [a, m] to 0 and letters from [n, z] to 1 in a string.


class Bin
	
  @@str_a_to_m = "a,m"
  @@str_n_to_z = "n,z"

  def convert_binary
  	@str_a_to_m = @@str_a_to_m.tr_s("a,m", '0')
  	  puts @str_a_to_m
  	@str_n_to_z = @@str_n_to_z.tr_s("n,z", '1')
  	  puts @str_n_to_z
  end
  
end

x = Bin.new

x.convert_binary





