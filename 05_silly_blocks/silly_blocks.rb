def reverser
  yield.split(' ').each {|w| w.reverse!}.join(' ')
end

def adder(increment = 1) 
  yield + increment
end

def repeater(n_times = 1)
  n_times.times {yield}
end