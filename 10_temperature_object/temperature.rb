class Temperature
  attr_reader :fahrenheit, :celsius

  def initialize(hash = {:f => 0, :c => 0})
    @fahrenheit = hash[:f] 
    @celsius = hash[:c]
  end

  def self.in_fahrenheit(temp)
    new({:f => temp})
  end

  def self.in_celsius(temp)
    new({:c => temp})
  end

  def to_fahrenheit
    return @fahrenheit if @fahrenheit
    (@celsius * 1.8 + 32).ceil
  end

  def to_celsius
    return @celsius if @celsius
    ((@fahrenheit.to_f - 32.0) / 1.8).ceil
  end
end

class Celsius < Temperature
  def initialize(temp)
    super({:c => temp})
  end
end

class Fahrenheit < Temperature
  def initialize(temp)
    super({:f => temp})
  end
end