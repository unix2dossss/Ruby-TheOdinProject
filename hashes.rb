shoes = {
  "summer" => "sandals",
  "winter" => "boots"
}

puts shoes["summer"]   #=> "sandals"
# puts shoes.fetch("hiking")   #=> nil because that key doesn't exist
puts shoes.fetch("hiking", "hiking boots") #=> return a default value if the key is not found

shoes["fall"] = "sneakers" #=> Add data
shoes["summer"] = "flip-flops" #=> Change data
shoes.delete("summer") #=> Delete data

books = {
  "Infinite Jest" => "David Foster Wallace",
  "Into the Wild" => "Jon Krakauer"
}

puts books.keys()      #=> ["Infinite Jest", "Into the Wild"]
puts books.values()    #=> ["David Foster Wallace", "Jon Krakauer"]

## Symbols

# 'Rocket' syntax
american_cars = {
  :chevrolet => "Corvette",
  :ford => "Mustang",
  :dodge => "Ram"
}
# 'Symbols' syntax
japanese_cars = {
  honda: "Accord",
  toyota: "Corolla",
  nissan: "Altima"
}

person = {name: 'bob', height: '6 ft', weight: '160 lbs', hair: 'brown'}

person.each do |key, value|
  puts "Bob's #{key} is #{value}"
end

## Launch School Hash Exercise

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }
siblings = []

family.each do |key, value|
  if key == :brothers || key == :sisters
    siblings.concat(value)
  end
end
print siblings

# Solution

immediate_family = family.select do |k, v|
  k == :sisters || k == :brothers
end

#immediate_family.values = [["jane", "jill", "beth"], ["frank", "rob", "david"]]
arr = immediate_family.values.flatten # ["jane", "jill", "beth", "frank", "rob", "david"]
p arr

dogs = {dog1: "gr", dog2: "r"}
cats = {cat1: "sphinx", cat2: "black"}
# merge - non-destructive
animals = dogs.merge(cats)
p animals
p dogs
p cats

# merge! - destructive
dogs.merge!(cats)
p dogs

animals.keys.each do |k|
  puts k
end
animals.values.each do |v|
  puts v
end

person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}
puts person[:name]

puts person.value?("Bob")
puts person.value?("Vandan")
