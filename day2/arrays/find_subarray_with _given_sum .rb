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


def subs (str, n, sum) 
  begin
    raise "Input cannot be empty" if n == 0
    sequence = [] 
    for i in 0..2**n-1
      seq = ""
      result = 0
      index = ""
      for j in 0..n-1
        if(i & (1<< j) != 0)
          index << j.to_s
          result += str[j]
        end
      end
      return "sum found at index #{index}" if result == sum && index.size == 1
      return "Sum found between indexes #{index[0]} and #{index[-1]}" if result == sum
      puts result
    end
    return "No subarray found"
  rescue => e 
    puts e.message
  end
end


puts "Enter array (eg: 1,2,3,4,5,6) : "
input = gets.chomp
puts "Enter Sum : "
sum = gets.chomp


begin
  unless input.match?(/^\d+(,\d+)*$/)
  raise "Invalid input. Please enter comma-separated integers."
  raise "invalid datatype for sum" if sum != sum.to_i.to_s
  end
  puts subs(input.split(",").map(&:to_i), input.split(",").size, sum.to_i)
rescue  => e
  STDERR.puts(e)
end
