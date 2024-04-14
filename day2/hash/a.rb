# a) Are two sets disjoint? (https://www.geeksforgeeks.org/check-two-given-sets-disjoint/?ref=lbp)

##
# class DisjointSet
#
class DisjointSet
  attr_reader :is_disjoint

  def initialize
    @is_disjoint = nil
    @a1 = [1, 5, 8, 9]
    @a2 = [0, 2, 8, 4]
  end

  # def is_disjoint
  #   puts @is_disjoint ? "" : ""
  # end

  def set_inputes(input_array1, input_array2)
    @a1 = input_array1
    @a2 = input_array2
  end

  def check_disjoint
    a1 = @a1
    a2 = @a2
    n1 = @a1.size
    n2 = @a2.size
    # @is_disjoint = nil
    for i in 0..n1 - 1
      for j in 0..n2 - 1
        @is_disjoint = "Given sets are not disjoint : #{@a1[i]} is common is both sets" if a1[i] == a2[j]
      end
    end
    @is_disjoint || @is_disjoint = 'Yes, Disjoint. There is no common element in two sets.'
  end
end

ds = DisjointSet.new
ds.check_disjoint
puts ds.is_disjoint
