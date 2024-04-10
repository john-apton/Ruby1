# ########################################################################## #
# Abstract
# Exercise 4h: Rearrange an array using maximum minimum form
# Ref: https://www.geeksforgeeks.org/rearrange-array-maximum-minimum-form-set-2-o1-extra-space/
# ########################################################################## #

# ########################################################################## #
# INITIAL SECTION
# ########################################################################## #
# #### #
# Includes
# #### #
require 'pp'

##
# class SubArrayWithSum
#   A class to find the sum among the sequence of given array 
#   require a sequence of comma-seperated intergers
#   require a sum value to be found in the array
#
class RearrangeMaxMin
  def initialize
    @array = []
    @n
  end

  def set_inputes (input_arr)
    unless input_arr.match?(/^\d+(,\d+)*$/)
      raise ArgumentError, "Invalid input. Please enter comma-separated integers."
    end
    raise ArgumentError, "Input cannot be empty" if(input_arr.size == 0)
    @array = input_arr.split(",").map(&:to_i)
    @n = @array.size
    pp @array.inspect
  end

  def re_arrange 
    arr = @array
    n = @n
    left = 0
    right = n-1
    for i in left..right
      if(right-i == left)
        print arr[i]
        break
      elsif (right-i > left)
        print arr[right-i]," ", arr[left]
        print " "
        left += 1
      end
      puts 
    end
  end
end

# ########################################################################## #
# MAIN SECTION
# ########################################################################## # 

puts "Enter comma seperated sequence of number without spaces eg: 1,2,3,4 : "
input = gets.chomp
begin
  rmn = RearrangeMaxMin.new
  rmn.set_inputes(input)
  rmn.re_arrange
  exit 0
rescue => e
  STDERR.puts(e)
  exit 1
end
