class LinkedList
  # Add new node containing value to the end of the list
  def append(value)
  end

  # Add new node containing value to the start of the list
  def prepend(value)
  end

  # Return the total number of nodes in the list
  def size
  end

  # Return the first node in the list
  def head
  end

  # Return the last node in the list
  def tail
  end

  # Return the node at the given index
  def at(index)
  end

  # Remove the last element from the list
  def pop
  end

  # Return true if the passed in value is in the list,
  # return flase if it is not
  def contains?(value)
  end

  # Return the index of the node containing value, or nil
  # if not found
  def find(value)
  end

  # Represent LinkedList objects as strings
  # Format: ( value ) -> ( value ) -> ( value ) -> nil
  def to_s
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

  def initialize
    @value = nil
    @next_node = nil
  end
end
