class Calculator
  def initialize
    @input = []
  end

  def <<(number)
    @input.push(number)
  end

  def add
    result = @input.inject{|sum, x| sum + x}
    puts result
    result
  end
end
