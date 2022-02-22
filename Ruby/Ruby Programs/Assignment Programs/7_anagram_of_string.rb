#Given two strings s and t, return true if t is an anagram of s, and false otherwise.

# str_t = "markiv"

# str_s = "vikram"

class Practice
  def fetch_anagram(str_t,str_s)
    str_t = str_t.chars
    anagram = ''
    str_t.each do |i|
      if str_s.include? i then
      else
        anagram = false 
      end
    end
    if anagram.eql? false
      puts anagram
    else
      puts true
    end
  end
end


code = Practice.new
code.fetch_anagram("markiv", "vikram")
