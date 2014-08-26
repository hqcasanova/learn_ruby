class Timer
  attr_accessor :seconds, :minutes, :hours

  def initialize
    @seconds = 0
  end

  #Based on http://stackoverflow.com/questions/2310197/how-to-convert-270921sec-into-days-hours-minutes-sec-ruby
  def time_string
    @minutes, @seconds = @seconds.divmod(60)       #divmod returns the quotient and the modulus as an array => multiple assignment    
    @hours, @minutes = @minutes.divmod(60)
    "%.2d:%.2d:%.2d" % [@hours, @minutes, @seconds]
  end
end