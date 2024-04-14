# b) Non-overlapping sum of two sets (https://www.geeksforgeeks.org/overlapping-sum-two-array/?ref=lbp)

##
# Given two arrays A[] and B[] of size n.
# It is given that both array individually contains distinct elements.
# We need to find the sum of all elements that are not common.
#
class NonOverlapingSum
  attr_reader :sum

  def initialize
    @a1 = [1, 5, 3, 8]
    @a2 = [5, 4, 6, 7]
    @unique = []
    @sum = 0
  end

  def set_unique
    @a1.each do |i|
      is_unique = true
      @a2.each do |j|
        next unless i == j

        is_unique = false
        @a2.delete(i)
        break
      end
      @unique.push(i) if is_unique
    end
    @unique += @a2
  end

  def find_sum
    set_unique
    @unique.each do |i|
      @sum += i
    end
  end
end

nos = NonOverlapingSum.new
nos.find_sum
p nos.sum


