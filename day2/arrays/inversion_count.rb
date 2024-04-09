# g) Inversion count in Array using Merge sort

class Array_utils
  attr_accessor :inversion_count
  def initialize(array)
    @inversion_count = 0
    @arr = array
    @n = array.size
  end

  def get_count
    puts "Given array has #{@inversion_count} inversions"
  end

  def count_inv()
    for i in 0..@n-2
      for j in i+1..@n-1
        # print "(#{@arr[i]}, #{@arr[j]})"
        # puts @inversion_count
        @inversion_count += 1
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
  inversion = Array_utils.new(input.split(",").map(&:to_i))
  inversion.count_inv()
  inversion.get_count
rescue => e
  STDERR.puts(e)
end

