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

def multiply(array)
  array.inject(1) do |product, value|
    product = product * value
  end
end

#From http://stackoverflow.com/questions/2434503/ruby-factorial-function
def factorial(number)
  (1..number).inject(:*) || 1
end