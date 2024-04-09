# d) Merge sort an array

class Array_utils
  attr_reader :sorted 
  # reader and writer for arr1 and arr2
  attr_accessor :arr1
  attr_accessor :arr2

  def initialize(arr1, n, arr2, m)
    @sorted = []
    @arr1 = arr1.map(&:to_i)
    @n = n
    @arr2 = arr2.map(&:to_i)
    @m = n
  end

  def print_sorted_arrays
    puts self.arr1.inspect, self.arr2.inspect
  end

  def print_result
    puts "array1 : #{arr1}, array2 : #{arr2}"
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

puts "Enter arrays (eg: 1,2,3,4,5,6) : "
puts "arr1 : "
a1 = gets.chomp
puts "arr2 : "
a2 = gets.chomp

begin
  unless a1.match?(/^\d+(,\d+)*$/) && a2.match?(/^\d+(,\d+)*$/)
  raise "Invalid input. Please enter comma-separated integers."
  end

  a1 = a1.split(",")
  n = a1.size # size of arr1
  a2 = a2.split(",")
  m = a2.size # size of arr2
  sort = Array_utils.new(a1,n,a2,m)
  puts sort.sorted.inspect
  sort.print_sorted_arrays
  sort.merge_sort()
  sort.print_result()
rescue => e
  STDERR.puts(e)
end

# arr1 = [1,3,5,7]
# n=arr1.size # size of arr1
# arr2 = [2,4,6,8]
# m=arr2.size # size of arr2

# sort(arr1, n, arr2, m)