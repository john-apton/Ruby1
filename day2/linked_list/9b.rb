# require('pp')
class Node
  attr_accessor :value, :next_node

  def initialize(value)
    @value = value
    @next_node = nil
  end
end

class CircularSinglyLinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def print_nodes
    current = @head
    loop do
      puts current.value
      current = current.next_node
      break if current == head
    end
  end

  def append(value)
    new_node = Node.new(value)
    if !@head
      @head = new_node
      @head.next_node = @head
      pp head
    else
      current = @head
      # while current.next_node != @head
      #   current = current.next_node
      # end
      current = current.next_node while current.next_node != @head

      current.next_node = new_node
      new_node.next_node = @head

      # current = current.next_node until current.next_node.nil?
      # current
    end
  end

  ##
  # A linked list is called circular if it not NULL #terminated and all nodes are connected in the form of a cycle.
  # An empty linked list is considered as circular.
  def is_circular(head)
    # puts ''
    return false if head.nil?

    temp = head
    while temp.next_node != head
      temp = temp.next_node
      break if temp.nil?
    end

    return false if temp.nil?

    true
  end
end

csll = CircularSinglyLinkedList.new
# csll.append(1)
# csll.append(2)
# csll.append(4)
# csll.print_nodes

# Example 1: Circular Linked List
node1 = Node.new(1)
node2 = Node.new(2)
node3 = Node.new(3)

node1.next_node = node2
node2.next_node = node3
node3.next_node = node1 # Make it circular

p csll.is_circular(node1)

# Example 2: Non-circular Linked List
non_circular_node1 = Node.new(1)
non_circular_node2 = Node.new(2)
non_circular_node3 = Node.new(3)

non_circular_node1.next_node = non_circular_node2
non_circular_node2.next_node = non_circular_node3

puts 'Non-circular Linked List'
puts csll.is_circular(non_circular_node1)

puts csll.is_circular(nil)
