# ########################################################################## #
# Abstract
# Exercise 6e: Quick sort an array.
# Ref: https://www.geeksforgeeks.org/quick-sort/
# ########################################################################## #

# ########################################################################## #
# INITIAL SECTION
# ########################################################################## #
# #### #
# Includes
# #### #
require 'pp'


##
# class QuickSortAnArray
# A class to sort an array using an pivot 
# Each input should be an integer eg: 1,2,3,4
#

class QuickSortAnArray
  attr_reader :output, :input
  def initialize ()
    @input = []
    output = []
  end

  def set_inputs_from_csv(input_value)
    unless input_value.match?(/^\d+(,\d+)*$/)
    raise ArgumentError, "Invalid input. Please enter comma-separated integers."
    end
    if (input_value.size == 0)
      raise ArgumentError, "Require 1 args, but received 0"
    end
    @input = input_value.split(",").map(&:to_i)
  end

  def partition (arr, low, high)
    pivot = arr[low]  # 5
    i = low  # 0
    j = high  # 4

    while (i < j)  # to run and swap elements until it find the correct position of the pivot, will stop when j crossed i
      #lets find an element greater than pivot
      # arr[i] <= pivot : if the element is smaller it is in the correct place
      # stop at a index where the element is smaller than the pivot
      while(arr[i] <= pivot && i <= high -1 )
        # this will increases i untill it finds an element greater than pivot
        i +=1
      end
      # lets find the first element that is smaller than the pivot from the right
      while(arr[j] > pivot && j >= low +1)
        # decrements j until it finds an element less than or equal to the pivot.
        j -= 1
      end # by the two loop we are able to find the first small element from right and first greater element from left of the pivot and then we can swap this
      if(i<j)
        temp = arr[i]
        arr[i] = arr[j]
        arr[j] = temp
      end
    end
    temp = arr[low]
    arr[low] = arr[j]
    arr[j] = temp
    j
  end

  def qs(arr, low , high)
    if(low < high) # if the array has only 1 element then it is sorted
    # finding the pivot's position so that we can know the left part has only the smaller nums that the pivot and the right part has only larget part than the pivot.
    partitionIndex = partition(arr, low, high)
    # sorting the left part 
    qs(arr, low, partitionIndex-1)
    #sorting the right part
    qs(arr, partitionIndex+1 , high)
    end
  end

  def quick_sort()
    @output = @input.dup
    qs(@output, 0 , @input.size-1 )
  end
end

# ########################################################################## #
# MAIN SECTION
# ########################################################################## #

puts "Enter comma seperated sequence of number eg: 1,2,3,4 : "
input = gets.chomp

if input.size < 1
  STDERR.puts "Error: Missing input value"
  # STDERR.puts "Usage: #{$0} <input value>"
  STDERR.puts "Where: <input value> is a comma-separated list of numbers"
  exit 1
end

begin
  qsa = QuickSortAnArray.new
  qsa.set_inputs_from_csv input
  qsa.quick_sort 
  pp qsa.output
  exit 0
rescue => e
  STDERR.puts(e.to_s)
  exit 1
end


