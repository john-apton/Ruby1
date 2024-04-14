# d) Size of a doubly linked list (https://www.geeksforgeeks.org/program-find-size-doubly-linked-list/?ref=lbp)
# e) Reverse a doubly linked list (https://www.geeksforgeeks.org/reverse-a-doubly-linked-list/?ref=lbp)

class Node
  attr_accessor :value, :next_node, :prev_node

  def initialize(value)
    @value = value
    @next_node = nil
    @prev_node = nil
  end
end

class LinkedList
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def append(value) # insert at end
    new_node = Node.new(value)
    if !tail
      @tail = new_node
      @head = new_node
    else
      @tail.next_node = new_node
      new_node.prev_node = @tail
      @tail = new_node
    end
  end

  def display
    current = @head

    until current.nil?
      puts current.value
      current = current.next_node
    end
  end

  # d) Size of a doubly linked list (https://www.geeksforgeeks.org/program-find-size-doubly-linked-list/?ref=lbp)
  def count_nodes
    count = 0
    current = @head
    until current.nil?
      count += 1
      current = current.next_node
    end
    count
  end

  # e) Reverse a doubly linked list (https://www.geeksforgeeks.org/reverse-a-doubly-linked-list/?ref=lbp)
  def reverse
    puts 'Elements before reverse'
    display
    puts 'After reversing'
    current = @head
    while current
      temp = current.next_node
      current.next_node = current.prev_node
      current.prev_node = temp
      @head = current if temp.nil?
      current = temp
    end
  end
end
list = LinkedList.new
1.upto(5) { |i| list.append(i) }
# list.display
list.reverse
list.display
puts
puts list.count_nodes
