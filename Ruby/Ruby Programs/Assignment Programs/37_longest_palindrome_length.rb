
=begin
Given a string s which consists of lowercase or uppercase letters, return the length of the longest
palindrome that can be built with those letters.Letters are case sensitive, for example, "Aa" is not
considered a palindrome here.
=end

class Practice
  def longest_palindrome_length(str)
    hs = {}
    str.each_char {|char| hs.store(char, str.count(char))}
    i = 0
    hs.each do |key, value|
      if value % 2 == 0
        i += value
      else
        if value == hs.values.max
          i += value
        else
          i += value-1
        end
      end
    end
    puts i   
  end
end

code = Practice.new
code.longest_palindrome_length('abccccdd')
	
