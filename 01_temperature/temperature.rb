def ftoc(f_temp)
  ((f_temp.to_f - 32.0) / 1.8).ceil

  #Horrible code that passes all the tests => refactor to something better
  # if f_temp == 32
  #   0
  # elsif f_temp == 98.6
  #   37
  # elsif f_temp == 68
  #   20
  # else
  #   100
  # end
end

def ctof(c_temp)
  (c_temp * 1.8 + 32).ceil
end