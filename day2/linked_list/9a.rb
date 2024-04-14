##
# class Node to create nodes of the linked list
#
class Node
  attr_accessor :value, :next_node

  def initialize(value)
    @value = value
    @next_node = nil
  end
end

##
#
#
class LinkedList
  attr_accessor :head

  def initialize
    # head always points to the first node
    @head = nil
  end

  def append(value)
    if @head.nil?
      @head = Node.new(value)
    else
      current = @head
      current = current.next_node until current.next_node.nil?
      current.next_node = Node.new(value)
    end
  end

  def display
    current = @head
    until current.nil?
      puts current.value
      current = current.next_node
    end
  end

  def find_middle_node
    fast_pointer = @head
    slow_pointer = @head
    # will exit when !true && !true
    while !fast_pointer.nil? && !fast_pointer.next_node.nil?
      slow_pointer = slow_pointer.next_node
      fast_pointer = fast_pointer.next_node.next_node
    end

    slow_pointer
  end
end

list = LinkedList.new
1.upto(5) { |i| list.append(i) }
# list.append(1)
# list.append(2)
# list.append(3)
# list.append(4)
# list.append(5)
# list.display
p list.find_middle_node.value
