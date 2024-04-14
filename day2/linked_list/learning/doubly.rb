require('pp')

class Node
  attr_accessor :value, :next_node, :prev_node

  def initialize(value)
    @value = value
    @next_node = nil
    @prev_node = nil
  end
end

##
# a doubly linked list has link to both prev and next node
# thus makes it goes backwards
class LinkedList
  attr_reader :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def inserting_at_begining(value)
    new_node = Node.new(value)
    if !@head
      @head = new_node
      @tail = new_node
    else
      new_node.next_node = @head
      @head.prev_node = new_node
      @head = new_node
      # new_node.nex
    end
  end

  def inserting_at_end(value)
    new_node = Node.new(value)
    if !@tail
      @tail = new_node
      @head = new_node
    else
      @tail.next_node = new_node
      new_node.prev_node = @tail
      @tail = new_node
    end
    # p head
    # p tail
    # puts
  end

  def display_forward
    current = @head
    until current.nil?
      puts  current.value
      current = current.next_node
    end
  end

  def display_backward
    current = @tail

    until current.nil?
      puts current.value
      current = current.prev_node
    end
  end

  def count_nodes
    current = @tail
    count = 0
    until current.nil?
      # puts current.value
      count += 1
      current = current.prev_node
    end
    count
  end

  def reverse
    current = @head # [null 25 [<-prev, 40, nil]]
    while current
      temp = current.next_node # nil
      current.next_node = current.prev_node
      current.prev_node = temp
      @head = current if temp.nil?
      current = temp
      # pp temp
    end
    @head
  end

  def check
    ptr1 = @head
    ptr2 = ptr1.next_node
  end

  # def display_forward
  # end
end

d_list = LinkedList.new
d_list.inserting_at_end(25)
d_list.inserting_at_begining(40)
d_list.inserting_at_end(5)
d_list.inserting_at_end(15)
d_list.inserting_at_begining(10)
d_list.inserting_at_end(35)

# d_list.display_forward
# puts
# d_list.display_backward
# puts
# p d_list.count_nodes

d_list.reverse
