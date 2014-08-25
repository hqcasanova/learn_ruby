class Book
  attr_accessor :title

  def title=(string)
     @title = titleize(string)
  end

  #Based on 03_simon_says
  private
  def titleize(string)
    particles = ["and", "or", "the", "over", "to", "the", "a", "but", "of", "in", "an"]
    string.capitalize.split(" ").map {|word| particles.include?(word.downcase) ? word : word.capitalize}.join(" ")
  end
end