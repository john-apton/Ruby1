class CountDistinctElements
  def initialize
    @arr = [1, 2, 1, 3, 4, 2, 3]
    @k = 4
  end

  def count_occurance(hash, item)
    if hash[item]
      hash[item] += 1
    else
      hash[item] = 1
    end
    hash
  end

  def count_elements
    0.upto(@arr.size - @k) do |i|
      unique_hash = {}
      @arr[i, @k].each do |e|
        count_occurance(unique_hash, e)
      end
      print "Count of distinct numbers in window #{@arr[i, @k]} is #{unique_hash.keys.size}"
      puts
    end
  end
end

cde = CountDistinctElements.new
cde.count_elements
