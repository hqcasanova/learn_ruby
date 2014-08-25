def echo(word)
  word
end

def shout(word)
  word.upcase
end

#From http://stackoverflow.com/questions/15513401/repeat-a-string-while-avoiding-a-space-on-the-end
def repeat(word, n_times=2)
  ([word] * n_times).join(" ")
end

def start_of_word(word, position=1)
  word[0..position - 1]
end

def first_word(string)
  string.split(' ')[0]
end

def titleize(string)
  particles = ["and", "or", "the", "over", "to", "the", "a", "but"]
  string.capitalize.split(" ").map {|word| particles.include?(word.downcase) ? word : word.capitalize}.join(" ")
end