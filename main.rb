require_relative 'linked_list'

list = LinkedList.new

puts 'Appending values:'
list.append('Dog')
list.append('Cat')
list.append('Parrot')
puts list.my_to_s

sleep 1

puts "\nPrepending values:"
list.prepend('Hamster')
list.prepend('Snake')
list.prepend('Turtle')
puts list.my_to_s
