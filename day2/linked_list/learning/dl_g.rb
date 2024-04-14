class Node
  attr_accessor :value, :next_node, :prev_node

  def initialize(value)
    @value = value
    @next_node = nil
    @prev_node = nil
  end
end

class DoublyLinkedList
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def append(value)
    new_node = Node.new(value)
    if @head.nil?
      @head = new_node
      @tail = new_node
    else
      @tail.next_node = new_node
      new_node.prev_node = @tail
      @tail = new_node
    end
  end

  def prepend(value)
    new_node = Node.new(value)
    if @head.nil?
      @head = new_node
      @tail = new_node
    else
      new_node.next_node = @head
      @head.prev_node = new_node
      @head = new_node
    end
  end

  def display_forward
    current = @head
    while current
      print "#{current.value} -> "
      current = current.next_node
    end
    puts 'nil'
  end

  def display_backward
    current = @tail
    while current
      print "#{current.value} -> "
      current = current.prev_node
    end
    puts 'nil'
  end
end

# Example usage
dll = DoublyLinkedList.new
dll.append(1)
dll.append(2)
dll.append(3)
dll.prepend(0)

puts 'Forward:'
dll.display_forward

puts 'Backward:'
dll.display_backward
