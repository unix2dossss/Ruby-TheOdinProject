puts "What is your name?"
name = gets.chomp
puts 'Hello ' + name

10.times do
  puts 'Hello ' + name
end

puts "What is your first name?"
first_name = gets.chomp
puts "What is your last name?"
last_name = gets.chomp
puts "Hello " + first_name + " " + last_name + "!"