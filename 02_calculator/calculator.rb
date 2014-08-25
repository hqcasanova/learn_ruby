def add(number1, number2)
  number1 + number2
end

def subtract(minuend, subtrahend)
  minuend - subtrahend
end

def sum(array)
  array.inject(0) do |sum, value|
    sum += value
  end
end