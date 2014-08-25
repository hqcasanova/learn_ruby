def translate(word)
  vowels = %w[a e i o u]
  consonants = ('a'..'z').to_a - vowels

  if vowels.include?(word[0])
    word + 'ay'
  else 
    new_word = word.scan(/\w/).inject(word) do |result, char|
      if consonants.include?(result[0])
        result[1..-1] + char
      else
        return result + 'ay'
      end
    end
  end
end
    