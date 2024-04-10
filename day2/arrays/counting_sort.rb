# ########################################################################## #
# Abstract
# Exercise 6c: Counting sort an array
# Ref: https://www.geeksforgeeks.org/counting-sort/
# ########################################################################## #

# ########################################################################## #
# INITIAL SECTION
# ########################################################################## #
# #### #
# Includes
# #### #
require 'pp'

class CountingSort
  attr_reader :output
  def initialize
    @output
    @input
  end

  def set_inputs (input_value)
    unless input_value.match?(/^\d+(,\d+)*$/)
      raise ArgumentError, "Invalid input. Please enter comma-separated numbers."
    end
    if (input_value.size == 0)
      raise ArgumentError, "Require 1 args, but received 0"
    end
    @input = input_value.split(",").map(&:to_i)
  end

  def sort()
    arr = @input
    # initilizing an array of size max element + 1 of the input array
    count_array = Array.new(arr.max+1,0)
    # counting occurence of each item  and storing it in count_array
    arr.each { |a| 
      count_array[a] += 1
    }
    # performing prefix sum (adding current with next element and store it in the next index)
    output_array = Array.new(arr.max+1,0)
    for i in 0..count_array.length-2
      count_array[i+1] = count_array[i] + count_array[i+1]
    end

    # from input_arr[n-1] 
    new_op = []
    index = arr.length-1
    while(index >= 0)
      count_array[arr[index]] -= 1
      new_op[count_array[arr[index]]] = arr[index]
      index -= 1
    end
    @output =  new_op
  end
end

# ########################################################################## #
# MAIN SECTION
# ########################################################################## #

puts "Enter comma seperated sequence of number without spaces eg: 1,2,3,4 : "
input = gets.chomp

if input.size < 1
  STDERR.puts "Error: Missing input value"
  # STDERR.puts "Usage: #{$0} <input value>"
  STDERR.puts "Where: <input value> is a comma-separated list of numbers"
  exit 1
end

begin
  c_sort = CountingSort.new
  c_sort.set_inputs input
  c_sort.sort
  pp c_sort.output
  exit 0
rescue => e
  STDERR.puts(e.to_s)
  exit 1
end
