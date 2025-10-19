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

puts "\nAccessing the value of the head and tail:"
puts "Head: #{list.head.value}, Tail: #{list.tail.value}"

puts "\nList size: #{list.size}"

puts "\nAccessing the value at a given index:"
puts "The node at index 2 contains the value #{list.at(2).value}."

puts "\nRemoving the last element:"
list.pop
puts list.my_to_s

puts "\nChecking if a value exists in the list:"
puts "Does the list contain the value 'Dog'? Answer: #{list.contains?('Dog')}"

puts "\nFind the index of a given value if it exists:"
puts "At which index can the value 'Cat' be found? Answer: #{list.find('Cat')}"
