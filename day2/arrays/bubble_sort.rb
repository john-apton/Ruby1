# ########################################################################## #
# Abstract
# Exercise 4b: Bubble sort an array
# Ref: https://www.geeksforgeeks.org/bubble-sort/
# ########################################################################## #

# ########################################################################## #
# INITIAL SECTION
# ########################################################################## #
# #### #
# Includes
# #### #
require 'pp'


##
# Class ShortestSuperStringFinder
#   A class to sort an array using bubble sort
#   require a sequence of comma-seperated numbers as input
#   comparing 2 value untill all the elements are sorted
#   
class BubbleSort
  attr_reader :output
  def initialize ()
    @input = []
    @output =  []
  end

  def set_inputes (input_array)
    unless input_array.match?(/^\d+(,\d+)*$/)
      raise ArgumentError, "Invalid input. Please enter comma-separated numbers."
    end
    if (input_array.size == 0)
      raise ArgumentError, "Require 1 args, but received 0"
    end
    @input = input_array.split(",").map(&:to_i)
  end


  ##
  # Method to sort an array of numbers using bubble sort
  # Run 1 nested lood to check every element of i and j
  # Have a temp variable to swap i and j 
  #
  def sort
    arr = @input.dup
    for i in 0..arr.length-1
      for j in 0..arr.length-1
        if(arr[i] < arr[j])
          temp = arr[i]
          arr[i] = arr[j]
          arr[j] = temp
        end
      end
    end
    @output = arr
  end
end


# ########################################################################## #
# MAIN SECTION
# ########################################################################## # 

puts "Enter comma seperated sequence of number without spaces eg: 1,2,3,4 : "
input_array = gets.chomp

begin
  bs = BubbleSort.new
  bs.set_inputes(input_array)
  bs.sort()
  pp bs.output.inspect
  exit 0
rescue => e
  STDERR.puts(e.to_s)
  exit 1
end
