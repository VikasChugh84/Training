# Given a string S, print all permutations of a given string.

# Input - 'Vikram'

class Practice
  def fetch_permutations(str)
  	str = str.chars
  	str_per_mut = str.permutation(6).to_a
  	print str_per_mut
  end
end

code = Practice.new
code.fetch_permutations('vikram')
