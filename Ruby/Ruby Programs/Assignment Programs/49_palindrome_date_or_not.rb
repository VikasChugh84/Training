=begin
  The 2nd of February 2020 is a palindromic date in both dd/mm/yyyy and mm/dd/yyyy format
  (02/02/2020). Given a date in dd/mm/yyyy format, return true if the date is palindromic in both date
  formats, otherwise return false
=end

require 'date'

def check_date(pro_date)
   pro_date = pro_date.tr_s('/', '')
   com_date = pro_date.reverse
   if pro_date == com_date
     return true
   else
     return false
   end
end

print "Enter date in dd/mm/yyyy or mm/dd/yyyy: "
pro_date = gets.chomp!
puts "#{check_date(pro_date)}"
