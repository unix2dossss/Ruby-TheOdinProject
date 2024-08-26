def concatenate_example(string)
  # use concatenation to format the result to be "Classic <string>"
  "Classic " << string
end

def concatenate(string)
  # use concatenation to format the result to be "Hello <string>!"
  "Hello " + string + "!"
  # https://www.theodinproject.com/paths
end

def substrings(word)
  # return the first 4 letters from the word using substrings
  word[0,4]
end

def capitalize(word)
  # capitalize the first letter of the word
  word.capitalize
end

def uppercase(string)
  string.upcase
end

def downcase(string)
  string.downcase
end

def empty_string(string)
  string.empty?
end

def string_length(string)
  string.length
end

def reverse(string)
  string.reverse
end

def space_remover(string)
  string.gsub(' ', '')
end
