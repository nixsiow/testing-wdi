class Calculator
  def initialize
    @input = []
  end

  def <<(number)
    @input.push(number.to_i)
  end

  def add
    result = @input.inject{|sum, x| sum + x}
    puts result
    result
  end

  def multiply
    result = @input[0] * @input[1]
    puts result
    result
  end
end
