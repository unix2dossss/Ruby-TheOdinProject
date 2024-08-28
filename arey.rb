num_array = [1, 2, 3, 4, 5]
str_array = ["This", "is", "a", "small", "array"]

Array.new # []
Array.new(3) # [nill, nill, nill]
Array.new(3, 7) # [7, 7, 7]
Array.new(3, true) # [true, true, true]

puts str_array[0]
puts str_array[-1]
puts str_array[1]
puts str_array[-2]

str_array.first         #=> "This"
puts str_array.first(2)      #=> ["This", "is"]
puts str_array.last(2)       #=> ["small", "array"]

num_array = [1, 2]
num_array.push(3, 4)
puts num_array
num_array << 5
puts num_array
num_array.pop
puts num_array

my_pets = ["cat", "dog", "bird", "cat", "snake"]
my_pets.delete("cat")
puts my_pets