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
