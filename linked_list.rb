class LinkedList
  def initialize
    @head = nil
    @tail = nil
  end

  # Helper function for list traversal
  # def traverse
  #  return nil if @head.nil?

  #  current_node = @head
  #  current_node.next_node
  # end

  # Add new node containing value to the end of the list
  def append(value)
    new_node = Node.new(value)
    if @head.nil?
      @head = new_node
      @tail = new_node
    else
      @tail.next_node = new_node
      @tail = new_node
    end
  end

  # Add new node containing value to the start of the list
  def prepend(value)
    new_node = Node.new(value)
    if @head.nil?
      @head = new_node
      @tail = new_node
    else
      new_node.next_node = @head
      @head = new_node
    end
  end

  # Return the total number of nodes in the list
  def size
    size = 0
    current_node = @head
    while current_node
      size += 1
      current_node = current_node.next_node
    end
    size
  end

  # Return the first node in the list
  def head
    return nil if @head.nil?

    @head
  end

  # Return the last node in the list
  def tail
    return nil if @tail.nil?

    @tail
  end

  # Return the node at the given index
  def at(index)
    return nil if @head.nil?

    current_node = @head
    current_index = 0
    while current_node
      return current_node if current_index == index

      current_node = current_node.next_node
      current_index += 1
    end
    nil
  end

  # Remove the last element from the list
  def pop
    return nil if @head.nil?

    current_node = @head
    current_node = current_node.next_node until current_node.next_node == @tail
    current_node.next_node = nil
    @tail = current_node
  end

  # Return true if the passed in value is in the list,
  # return false if it is not
  def contains?(value)
    return nil if @head.nil?

    current_node = @head
    while current_node
      return true if current_node.value == value

      current_node = current_node.next_node

    end
    false
  end

  # Return the index of the node containing value, or nil
  # if not found
  def find(value)
  end

  # Represent LinkedList objects as strings
  # Format: ( value ) -> ( value ) -> ( value ) -> nil
  def my_to_s
    current = @head
    elements = []
    while current
      elements << "( #{current.value} )"
      current = current.next_node
    end
    elements << 'nil'
    elements.join(' -> ')
  end

  # Extra credit:
  # Insert a new node with the provided value at the given index
  # def insert_at(value, index)
  # end
  #
  # Remove the node at the given index
  # def remove_at(index)
  # end
end

class Node
  attr_accessor :value, :next_node

  def initialize(value = nil)
    @value = value
    @next_node = nil
  end
end
