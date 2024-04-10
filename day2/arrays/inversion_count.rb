# ########################################################################## #
# Abstract
# Exercise 4g: Inversion count in Array using Merge sort
# Ref: https://www.geeksforgeeks.org/inversion-count-in-array-using-merge-sort/?ref=lbp
# ########################################################################## #

# ########################################################################## #
# INITIAL SECTION
# ########################################################################## #
# #### #
# Includes
# #### #
require 'pp'

##
# class InversionSort
#   A class to find the inversion count of a given array 
#   require a sequence of comma-seperated intergers
#
class InversionSort
  attr_accessor :inversion_count
  def initialize()
    @inversion_count = 0
    @arr 
    @n
  end

  def get_count
    pp "Given array has #{@inversion_count} inversions"
  end

  def set_inputes (input_array)
    unless input_array.match?(/^\d+(,\d+)*$/)
    raise ArgumentError, "Invalid input. Please enter comma-separated integers."
    end
  @arr = input_array.split(",").map(&:to_i)
  @n = @arr.size
  end

  ##
  #   Method to get all possible inversion of given array
  #   Inputs: sequcence of comma-seperated integers 
  #     - Run a nested loop to get the count of each inversion of each element in an array
  #     - eg [1,2,3,4] has (1,2) (2,3) (3,4)...
  #     
  def count_inv()
    for i in 0..@n-2
      for j in i+1..@n-1
        # print "(#{@arr[i]}, #{@arr[j]})"
        # puts @inversion_count
        @inversion_count += 1
      end
    end
  end
end

# ########################################################################## #
# MAIN SECTION
# ########################################################################## # 

puts "Enter comma seperated sequence of number without spaces eg: 1,2,3,4 : "
input = gets.chomp

begin
  is = InversionSort.new()
  is.set_inputes(input)
  is.count_inv()
  is.get_count
  exit 0
rescue => e
  STDERR.puts(e)
  exit 1
end