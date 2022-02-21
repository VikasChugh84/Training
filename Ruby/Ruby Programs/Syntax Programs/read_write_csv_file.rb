# Retreive csv data using ruby

class Logic
  require 'csv'
  def retreive_csv_data
    #emp_data = File.read("/home/beryl-pc/snap/data_test.csv")
    # File read method puts the output in form of string to emp_data
    emp_data = CSV.read("emp_data.csv")
    # File read method puts the output in form of array to emp_data
    puts emp_data
  end

  def write_in_csv_file
    emp_data = CSV.open("emp_data.csv", "w") do |csv|
      csv << ["email"]
      csv << ["bill@abc.com"]
    end
    puts emp_data
  end
end

code = Logic.new
code.retreive_csv_data
code.write_in_csv_file