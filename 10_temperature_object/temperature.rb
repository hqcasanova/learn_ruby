class Temperature
  attr_reader :fahrenheit, :celsius

  def initialize(hash = {:f => 0, :c => 0})
    @fahrenheit = hash[:f] 
    @celsius = hash[:c]
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