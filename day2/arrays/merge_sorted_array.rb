# ########################################################################## #
# Abstract
# Exercise 4d: Merge sort an array
# Ref: https://www.geeksforgeeks.org/merge-two-sorted-arrays/
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

class MergeSort
  attr_reader :sorted 
  # reader and writer for arr1 and arr2
  attr_accessor :arr1
  attr_accessor :arr2

  def initialize()
    @sorted = []
    @arr1
    @n 
    @arr2 
    @m 
  end

  def print_sorted_arrays
    puts "Merge sorted arrays"
    puts self.arr1.inspect, self.arr2.inspect
  end

  def print_result
    puts "Two sorted arrays"
    puts "array1 : #{arr1}, array2 : #{arr2}"
    puts
  end

  def set_inputes (arr1, arr2)
    unless arr1.match?(/^\d+(,\d+)*$/) && arr1.match?(/^\d+(,\d+)*$/)
      raise ArgumentError, "Invalid input. Please enter comma-separated integers."
    end
    raise ArgumentError, "inputes cannot be empty" if()
    @arr1 = arr1.split(",").map(&:to_i)
    @n = @arr1.size # size of arr1
    @arr2 = arr2.split(",").map(&:to_i)
    @m = @arr2.size # size of arr2
  end

  def merge_sort()
    left = 0 # pointer for arr1
    right = 0 # pointer for arr2
    index = 0 # pointer for result

    while (left < @n && right < @m)
      # if element of ar1 is smaller take this
      if @arr1[left] <= @arr2[right]
        @sorted[index] = @arr1[left]
        left +=1
        index += 1
      else  # if element of ar2 smaller take that 
        @sorted[index] = @arr2[right]
        right += 1
        index += 1
      end
    end

    #  this will run when n is greater than m
    while (left < @n)
      @sorted[index] = @arr1[left]
      left += 1
      index += 1
    end

    # this will run when m is greater than n and for print the nth value of arr2 when m and n are equal
    while (right < @m)
      @sorted[index] = @arr2[right]
      index += 1
      right += 1
    end

    # putting every elemnt back into arr1 and arr2 with there corresponding length
    for i in 0..@sorted.size-1
      if(i < @n)
        @arr1[i] = @sorted[i]
      else
        @arr2[i-@n] = @sorted[i]
      end
    end
  end

end

puts "Enter 2 sorted comma seperated sequence of number without spaces eg: 1,2,3,4 : "
puts "arr1 : "
a1 = gets.chomp
puts "arr2 : "
a2 = gets.chomp

begin
  ms = MergeSort.new()
  ms.set_inputes(a1,a2)
  ms.merge_sort()
  ms.print_result()
  ms.print_sorted_arrays
  exit 0
rescue => e
  STDERR.puts(e)
  exit 1
end

# arr1 = [1,3,5,7]
# n=arr1.size # size of arr1
# arr2 = [2,4,6,8]
# m=arr2.size # size of arr2

# sort(arr1, n, arr2, m)