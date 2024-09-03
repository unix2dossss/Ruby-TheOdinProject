numbers = [5, 6, 7, 8]
puts numbers.include?(6)
puts numbers.include?(3)

friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
invited_list = friends.select { |friend| friend != 'Brian' }
puts invited_list.include?('Brian')

puts numbers.any? { |number| number > 500 }
puts numbers.any? { |number| number < 20 }

puts friends.all? { |friend| friend.length >= 3 }
puts friends.all? { |friend| friend.length > 5 }

friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
puts friends.none? { |friend| friend.length > 6 }
