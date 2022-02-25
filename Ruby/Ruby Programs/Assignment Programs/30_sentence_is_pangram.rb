# A pangram is a sentence where every letter of the English alphabet appears at least once.

# Input - The five boxing wizards jump quickly.

# Check it's pangram or not

class Practice
  def check_pangram(str)
    alp_count = ('a'..'z').count
    str = str.chars.uniq.sort
    str = str.shift
    if str.count == alp_count
      return true
    else
      return false
    end
  end
end

code = Practice.new
code.check_pangram("The five boxing wizards jump quickly")
