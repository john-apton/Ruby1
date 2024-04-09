# a) All unique elements
class Array_utils
  def initialize (arr, n)
      @arr = arr
      @n = n
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
        puts sorted_array[i]
      end
    end
  end
end

puts "Enter array (eg: 1,2,3,4,5,6) : "
input = gets.chomp

begin
  unless input.match?(/^\d+(,\d+)*$/)
  raise "Invalid input. Please enter comma-separated integers."
  end
  uniq = Array_utils.new(input.split(","), input.size)
  uniq.find_unique()
rescue => e
  STDERR.puts(e)
end

