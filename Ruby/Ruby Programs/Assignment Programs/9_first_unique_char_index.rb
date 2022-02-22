#Given a string s, find the first non-repeating character in it and return its index. If it does not exist, return -
#1.

#Input-"Rihanpreetsingh"

#Approach - seperate non-repeating elements in different array and 
# then pick the first one and find it in default array to find its index.

#output - first non-repeat character is a and its index is 3
#         second non-repeat character is a p and its index is 5

class Practice

  def fetch_char_index(str)
  	str = str.chars
  	str_uniq = []
  	str.each do |i|
  	  if str.count(i[0]) < 2
  	  	str_uniq << i
  	  end
    end
    if str_uniq.empty? == false
      str.each do |i|
        if i.include? str_uniq[0]
      	  puts str.index(i)
        end
      end
    else
      puts 'No unique element'
    end
  end

end

code = Practice.new
code.fetch_char_index("rihanpreetsingh")