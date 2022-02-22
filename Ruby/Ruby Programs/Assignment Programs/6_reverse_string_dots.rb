#Given a String S, reverse the string without reversing its individual words. Words are separated by dots.

# input - "r.a.n.j.i.t"

# Output Require - "t.i.j.n.a.r"

class Practice
  def reverse_string(str)
    str = str.chars
    rev_str = ''
    str.length.times do |i|
      rev_str << str[-1]
      str.pop
    end
    puts rev_str
  end
end

code = Practice.new
code.reverse_string("r.a.n.j.i.t")
