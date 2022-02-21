#Fibonacci Sequence

# Exceptions Test

# Syntax:
# begin  
#   #-rescue OneTypeOfException  
#   #-rescue AnotherTypeOfException  
# else  
#   #Other exceptions
# ensure  
#   #Always will be executed
# end

class Practice
  def fibonacci_seq(x)
    arr = [0, 1]

# ---------------------------------------------------------------------------
#     begin
#       arr << z
#       #The code under begin and rescue is protected so it doesn't look for variable z which is not exists actually.
#     rescue
#        puts "This block will capture all types of exceptions"
#        retry 
#     end
# ---------------------------------------------------------------------------

#     add retry under rescue:
#     begin
#       arr << z
#         #The code under begin and rescue is protected so it doesn't look for variable z which is not exists actually.
#       rescue
#         puts "This block will capture all types of exceptions"
#         retry
#       end

#     retry - It will move control to beginning of began and program will consider code under rescue as primary code 
#     and results print rescue code based on number of iteratons in loop.

# --------------------------------------------------------------------------------

#     exception:
      begin
        arr << z
        raise 'exception'
      rescue Exception => e
        puts e.message  
        puts e.backtrace.inspect  
      end

# -------------------------------------------------------------------------------------
    until x >= 255
      y = arr[-1] + arr[-2]
      x = y
      arr << x
    end
    arr.pop
    puts arr
  end
end

Pct = Practice.new
Pct.fibonacci_seq(0)
