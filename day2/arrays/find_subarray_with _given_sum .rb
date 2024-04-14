# ########################################################################## #
# Abstract
# Exercise 4f: Sub-array with the given sum 
# Ref: https://www.geeksforgeeks.org/find-subarray-with-given-sum/?ref=lbp
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
class SubArrayWithSum
  attr_reader :result
  def initialize()
    @result = ""
    @i_arr = []
    @n 
    @sum
  end
  
  def set_inputes (input_array, sum)
    raise ArgumentError, "Invalid data provided to sum" if(sum.empty? || sum != sum.to_i.to_s)
    raise ArgumentError, "Argumnet missing, input-sequence cannot be empty" if(input_array.empty?)
    unless input_array.match?(/^\d+(,\d+)*$/)
      raise ArgumentError, "Invalid input. Please enter comma-separated integers."
    end
    @i_arr = input_array.split(",").map(&:to_i)
    @n = @i_arr.size
    @sum  = sum.to_i
  end

  ##
  #   Method to check whether the sum is present in the sequence of the input array
  #   Inputs: sequcence of comma-seperated integers and a sum integer
  #     -using power bit method to get all possible subsequence
  #     -add each sebsequence to check if the sum is eql to the addintion of the subsequence
  #
  def get_sum_of_subarray () 
    sequence = [] 
    for i in 0..2**@n-1
      seq = ""
      result = 0
      index = ""
      for j in 0..@n-1
        if(i & (1<< j) != 0)
          index << j.to_s
          result += @i_arr[j]
        end
      end
      return @result = "sum found at index #{index}" if result == @sum && index.size == 1
      return @result = "Sum found between indexes #{index[0]} and #{index[-1]}" if result == @sum
      @result = result
    end
    return @result =  "No subarray found"
  end
end

# ########################################################################## #
# MAIN SECTION
# ########################################################################## # 

puts "Enter comma seperated sequence of number without spaces eg: 1,2,3,4 : "
input = gets.chomp
puts "Enter Sum : "
sum = gets.chomp

begin
  sas = SubArrayWithSum.new()
  sas.set_inputes(input, sum)
  sas.get_sum_of_subarray
  pp sas.result
  exit 0
rescue  => e
  STDERR.puts(e)
  exit 1
end


# f) Sub-array with the given sum 

# def subs(arr, sum)
#   result = 0
#   for i in 0..arr.size-1
#     if(result > sum)
#       for j in 0..arr.size-1
#         if(result <= sum)
#           return result
#         end
#         result -= arr[j]
#       end
#       return result
#     end
#       puts result
#     result+= arr[i]
#   end
# end