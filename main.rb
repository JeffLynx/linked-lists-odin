require_relative 'linked_list'

list = LinkedList.new

puts 'Appending values:'
list.append('Dog')
list.append('Cat')
list.append('Parrot')
puts list.my_to_s

puts "\nPrepending values:"
list.prepend('Hamster')
list.prepend('Snake')
list.prepend('Turtle')
puts list.my_to_s

puts 'Accessing the value of the head and tail:'
puts "Head: #{list.head.value}, Tail: #{list.tail.value}"
puts "\nList size: #{list.size}"

puts 'Accessing the value at a given index:'
puts "The node at index 2 contains the value #{list.at(2).value}."

puts 'Removing the last element:'
list.pop
puts list.my_to_s

puts 'Checking if a value exists in the list:'
puts list.contains?('Banana')
