# Given two strings s and part, perform the following operation on s until all occurrences of the substring
# part are removed:
# Find the leftmost occurrence of the substring part and remove it from s.
# Return s after removing all occurrences of part.
# A substring is a contiguous sequence of characters in a string.

# Input - s = "learningandtesting"
#         part = "lear"

# Output - s => "ingndtsting"

class Practice

  def fetch_modified_str(s,part)
  	part = part.chars
  	s = s.chars
  	part.each do |i| 
  	  if s.any? {|s| s.include? i}.eql? true
  	    s.delete(i)
  	  end
  	end
  	puts s.join('')
  end

  def using_method(s,part)
  	str = s.delete!(part)
  	puts str
  end
end

code = Practice.new
code.fetch_modified_str("learningandtesting","lear")
code.using_method("learningandtesting","lear")


