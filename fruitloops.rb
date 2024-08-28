puts "loop do"
i = 0
loop do
  puts "i is #{i}"
  i += 1
  break if i == 10
end

puts "while"
i = 0
while i < 11 do
  puts "i is #{i}"
  i += 1
end

while gets.chomp != "Yes" do
  puts "Are we there yet?"
end

puts "until"
i = 0
until i >= 11 do
  puts "i is #{i}"
  i += 1
end

puts "for exclusive 5"
for i in 0...5
  puts "#{i} zombies incoming!"
end

puts "for inclusive 5"
for i in 0..5
  puts "#{i} zombies incoming!"
end

puts "times"
5.times do
  puts "Hello World!"
end

5.times do |number|
  puts "Alternative fact number #{number}"
end

puts "upto"
5.upto(10) { |num| print "#{num} " }

puts "downto"
10.downto(5) { |num| print "#{num} "}