# You are given two strings of the same length s and t. In one step you can choose any character of t and
# replace it with another character. Return the minimum number of steps to make t an anagram of s. An
# Anagram of a string is a string that contains the same characters with a different (or the same) ordering.

# Input - s ='vikram' t = 'ranjit'

class Practice
  def steps_count(s,t)
    arr_s = s.chars
    arr_t = t.chars
    step_count = 0
    arr_t.each do |i|
      if !s.include? i
        step_count +=1
      end
    end
    puts step_count
  end
end

code = Practice.new
code.steps_count('vikram','ranjit')
