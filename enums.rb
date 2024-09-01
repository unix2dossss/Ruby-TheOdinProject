friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
invited_list = []

for friend in friends do
  if friend != 'Brian'
  invited_list.push(friend)
  end
end

p invited_list #=> ["Sharon", "Leo", "Leila", "Arun"]

# using select
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
friends = friends.select { |friend| friend != 'Brian' }
p friends
# using reject
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
friends = friends.reject { |friend| friend == 'Brian' }
p friends


## Each
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
friends.each { |friend| puts "Hello, " + friend }


my_array = [1, 2]

my_array.each do |num|
  num *= 2
  puts "The new number is #{num}."
end

#=> The new number is 2.
#=> The new number is 4.

#=> [1, 2]

my_hash = { "one" => 1, "two" => 2 }
my_hash.each { |key, value| puts "#{key} is #{value}" }

fruits = ["apple", "banana", "strawberry", "pineapple"]
fruits.each_with_index { |fruit, index| puts fruit if index.even? }

friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
shouting_at_friends = []
friends.each { |friend| shouting_at_friends.push(friend.upcase) }
p shouting_at_friends


# map
my_order = ['medium Big Mac', 'medium fries', 'medium milkshake']
my_order = my_order.map { |item| item.gsub('medium', 'extra large') }
p my_order

salaries = [1200, 1500, 1100, 1800]
salaries = salaries.map { |salary| salary - 700 }
p salaries

# select
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
new_friends = friends.select { |friend| friend != 'Brian' }

p new_friends

responses = { 'Sharon' => 'yes', 'Leo' => 'no', 'Leila' => 'no', 'Arun' => 'yes' }
coming = []
responses.select { |key, value| coming.push(key) if value == 'yes' }
p coming

my_numbers = [5, 6, 7, 8]
sum = my_numbers.reduce { |sum, number| sum + number }
p sum

sum = my_numbers.reduce(1000) { |sum, number| sum + number }
p sum

# reduce always returns a single object

votes = ["Bob's Dirty Burger Shack", "St. Mark's Bistro", "Bob's Dirty Burger Shack"]

votes = votes.reduce(Hash.new(0)) do |result, vote|
  result[vote] += 1
  result
end

#.reduce returns a single object
# Hash.new(0) creates a new hash object each iteration with default values 0
# result is the accumlator. vote is each element in votes list each iteration
# Add 1 to the selected vote in the vote list
# return result
puts votes
