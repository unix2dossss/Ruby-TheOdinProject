test_scores = [
  [97, 76, 79, 93],
  [79, 84, 76, 79],
  [88, 67, 64, 76],
  [94, 55, 67, 81]
]

teacher_mailboxes = [
  ["Adams", "Baker", "Clark", "Davis"],
  ["Jones", "Lewis", "Lopez", "Moore"],
  ["Perez", "Scott", "Smith", "Young"]
]

# NoMethodError
# puts teacher_mailboxes[3][0]
# nil
p teacher_mailboxes[0][4]

# return nil on an non-existent nested element
p teacher_mailboxes.dig(3, 0)

# mutable nested array vs immutable nested array
mutable = Array.new(3, Array.new(2))
mutable[0][0] = 1000
p mutable # prints: #=> [[nil, nil], [nil, nil], [nil, nil]]

immutable = Array.new(3) { Array.new(2) }
immutable[0][0] = 1000
p immutable # prints: #=> [[1000, nil], [nil, nil], [nil, nil]]
