##
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
class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def append(value)
    if @head.nil?
      # For value 1
      # initilize the head to value
      @head = Node.new(value)
      # p @head, 'stop'
      # p ""
    else
      # For value 2
      # @head is already there
      # assigning it to a var current
      # current.next node is nil here.
      # For value 3
      current = @head # {@value = 0 , @next_node = nil}
      # current = nill
      # p @head
      # p current
      # p 'lead'
      # p "curr@head => #{current}"
      # p @head
      current = current.next_node until current.next_node.nil? # run until this condition becomes true.
      # p current
      # current.next_node =  {@value = 1 , @next_node = nil}
      current.next_node = Node.new(value)
      # p current
      # p 'end'
    end
  end

  def display
    # current = @head
    # until current.nil?
    #   print "#{current.value} -> "
    #   current = current.next_node
    # end
    # puts 'nil'
    current = @head
    until current.nil?
      puts current.value
      current = current.next_node
    end

    # puts current.value
  end

  def count_nodes
    current = @head
    count = 0
    until current.nil?
      current = current.next_node
      count += 1
    end
    puts count
  end
end

# Example usage:
list = LinkedList.new
list.append(1)
list.append(2)
list.append(3)
# list.append(3)
list.count_nodes
