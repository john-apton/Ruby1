require('pp')

class FindSubset
  def initialize
    @result
    @input = [3, 7, 2, 9, 1]
    @k = 3
    @N = @input.size
  end

  def get_inputs(input_array, k)
    @input = input_array.split(',').map(&:to_i)
    @N = @input.size
    @k = k.to_i
  end

  def get_subset
    # Array for storing frequency of modulo
    f = Array.new(@k, 0)

    # puts @k
    # pp @input
    for i in 0..@N
      f[@input[i] % @k || 0] += 1
    end
    pp f
  end
end

fs = FindSubset.new
fs.get_subset
