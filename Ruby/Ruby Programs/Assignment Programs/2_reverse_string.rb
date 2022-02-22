# Write a function to return reverse of a string using recursion.

#input - "vikram"

#output require - "markiv"

class Practice
  def reverse_string_method_1(str)
    arr = []
    str = str.chars
    str.count.times do |i|
      arr << str.pop
    end
    puts arr.join('')
  end

  def reverse_string_method_2(str)
    rev_str = ''
    str.length.times do |i|
      rev_str << str[str.length-1]
      str = str.chomp(str[str.length-1])
    end
    puts rev_str
  end

  def reverse_string_method_3(str)
    puts str.reverse
  end

end

code = Practice.new
code.reverse_string_method_1("vikram")
code.reverse_string_method_2("vikram")
code.reverse_string_method_3("vikram")




