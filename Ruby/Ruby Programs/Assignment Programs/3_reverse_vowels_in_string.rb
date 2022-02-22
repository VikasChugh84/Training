# Given a string s, reverse only all the vowels in the string and return it.The vowels are 'a', 'e', 'i', 'o', and 'u',
# and they can appear in both cases.

# Input - "vikramjeet"

# vowels - ['i','a','e','e']

# reverse_vowels - ['e','e','a','i']

# output - "vekremjait"


class Practice
  def reverse_vowels(str)
    vowels = ['a','e','i','o','u']
    str_arr = str.chars
    str_vowels = []
    str_arr.each do |i|
      vowels.each do |n|
        if i.include? n then
          str_vowels << n 
        end
      end
    end
    rev_vowels = str_vowels.reverse
    str_new = []
    str_arr.each do |i|
      if i == str_vowels[0]
        str_new << rev_vowels[0]
        str_vowels.shift
        rev_vowels.shift
      else
        str_new << i
      end
    end
    puts str_new
  end
end

code = Practice.new
code.reverse_vowels("vikramjeet")

 