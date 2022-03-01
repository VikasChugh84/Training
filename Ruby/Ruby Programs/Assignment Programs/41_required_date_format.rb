=begin
  Create a function that converts dates from one of five string formats:
  "January 9, 2019" (MM D, YYYY)
  "Jan 9, 2019" (MM D, YYYY)
  "01/09/2019" (MM/DD/YYYY)
  "01-09-2019" (MM-DD-YYYY)
  "01.09.2019" (MM.DD.YYYY)
  The return value will be an array formatted like: [MM, DD, YYYY], where MM, DD, and YYYY are all integers.
=end

require 'date'

def fetch_date_arr(arr)
  sta_frt = []
  req_frt = []
  arr.each do |i|
    sta_frt << Date.parse(i)
  end
  sta_frt.each do |n|
    req_frt << n.strftime("%m-%d-%Y")
  end
  print req_frt
end

arr = ["January 9, 2019","Jan 9, 2019","01/09/2019","01-09-2019","01.09.2019"]
"#{fetch_date_arr(arr)}"