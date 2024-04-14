# class LinkedList
#   attr_reader :head

#   def initialize
#     self.head = nil
#   end

#   private

#   class Node
#     attr_accessor :value, :nextNode
#   end
# end

##
# this is a self referensial stucture
# a node is nothing but a structure only
class Node
  attr_accessor :data, next_node

  def initialize(data, next_node)
    @data = data
    @next_node = next_node
  end
end
