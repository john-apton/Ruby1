# a) All unique elements

# ########################################################################## #
# Abstract
# Exercise 4a: All unique elements 
# Ref: https://www.geeksforgeeks.org/print-distinct-elements-given-integer-array/?ref=lbp
# ########################################################################## #

# ########################################################################## #
# INITIAL SECTION
# ########################################################################## #
# #### #
# Includes
# #### #
require 'pp'

##
# class UniqArray
#   A class to find the the unique element in an array
#   require a sequence of comma-seperated intergers in csv format
#

class UniqSort
  attr_reader :output
  def initialize 
    @arr 
    @n 
    @output = []
  end

  def set_input (arr)
    unless arr.match?(/^\d+(,\d+)*$/)
    raise ArgumentError, "Invalid input. Please enter comma-separated integers."
    end
    if (arr.size == 0)
      raise ArgumentError, "Require 1 args, but received 0"
    end

    @arr = arr.split(",").map(&:to_i)
    @n = @arr.size
  end

  def arr_sort (arr)
    for i in 0..arr.length-1
      for j in 0..arr.length-1
        if(arr[i] < arr[j])
          temp = arr[i]
          arr[i] = arr[j]
          arr[j] = temp
        end
      end
    end
    arr
  end

  def find_unique ()
    sorted_array = self.arr_sort(@arr)
    for i in 0..@n-1
      if (sorted_array[i] != sorted_array[i+1])
        @output << sorted_array[i]
      end
    end
  end
end

puts "Enter comma seperated sequence of number eg: 1,2,3,4 without space : "
input = gets.chomp

begin
  us = UniqSort.new
  us.set_input(input)
  us.find_unique
  pp "The uiqe array is : #{us.output}"
  exit 0
rescue => e
  STDERR.puts(e)
  exit 1
end

