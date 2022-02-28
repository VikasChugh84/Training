=begin 
  Given a string text, you want to use the characters of text to form as many instances of the word "balloon"
  that can be formed.
  Example: loonballxballpoon
  You can create only 2 balloon from example text, so return 2
=end      

class Practice
  def fetch_instance(str, text)
    str_hs = {'b'=>1, 'a'=>1, 'l'=>2, 'o'=>2, 'n'=>1}
    arr = []
    text.each_char do |char|
    if str.include? char
      count_char = text.count(char)
      if str_hs[char] < count_char
        arr.push(count_char / str_hs[char])
      end
    end
    end
    puts arr.min
  end
end

code = Practice.new
code.fetch_instance("balloon", "loonballxballpoonmbaoolln")
