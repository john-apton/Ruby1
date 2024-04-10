# ########################################################################## #
# Abstract
# Exercise 3j: Square root decomposition of an array in ascending order 
# Ref: https://www.geeksforgeeks.org/square-root-sqrt-decomposition-algorithm/?ref=lbp
# ########################################################################## #

# ########################################################################## #
# INITIAL SECTION
# ########################################################################## #
# #### #
# Includes
# #### #
require 'pp'

class SqrtDecomposition
  attr_reader :output
  def initialize()
    @output = 0
    @arr = []
    @l = 0
    @r = 0
  end

  def set_inputs (arr, left_point, right_point)
    unless arr.match?(/^\d+(,\d+)*$/)
      raise ArgumentError, "Invalid input. Please enter comma-separated integers."
    end
    if (!(left_point == left_point.to_i.to_s && right_point == right_point.to_i.to_s))
      raise ArgumentError, "Invalid input. Required numbers insted received #{left_point} and #{right_point}"
    end
    if (arr.size < 1 || left_point.size < 1 || right_point.size < 1)
      raise ArgumentError, "Input cannot be empty."
    end
    @arr = arr.split(",").map(&:to_i)
    @l = left_point.to_i
    @r = right_point.to_i
  end

  def s_composition
    sum = 0
    for i in @l..@r
      sum += @arr[i]
    end
    @output = sum
  end
end


# ########################################################################## #
# MAIN SECTION
# ########################################################################## 

# if ARGV.size < 1
#   STDERR.puts "Error: Missing input value"
#   STDERR.puts "Usage: #{$0} <input value>"
#   STDERR.puts "Where: <input value> is a comma-separated list of strings"
#   # Non-zero exit value indicates an error state in Linux/Unix-like OS-es
#   exit 1
# end
# 

puts "Enter comma seperated sequence of number eg: 1,2,3,4 without space : "
arr = gets.chomp
puts "Enter left and right range"
print "Left : "
puts 
l = gets.chomp
print "Right : "
puts 
r = gets.chomp
begin
  sd = SqrtDecomposition.new
  sd.set_inputs(arr,l,r)
  sd.s_composition
  puts sd.output
  exit 0
rescue => e
  STDERR.puts(e.to_s)
  exit 1
end
