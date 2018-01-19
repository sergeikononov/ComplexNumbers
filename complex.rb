class ComplexNumber
  attr_accessor :realNumber
  attr_accessor :imaginaryNumber

  def initialize(realNumber, imaginaryNumber)
    @realNumber = realNumber
    @imaginaryNumber = imaginaryNumber
  end

  def +(numbers)
    ComplexNumber.new(@realNumber+numbers.realNumber, @imaginaryNumber + numbers.imaginaryNumber)
  end

  def -(numbers)
    ComplexNumber.new(@realNumber-numbers.realNumber, @imaginaryNumber - numbers.imaginaryNumber)
  end

  def *(numbers)
    ComplexNumber.new(@realNumber*numbers.realNumber - @imaginaryNumber*numbers.imaginaryNumber,
                      @imaginaryNumber*numbers.realNumber + @realNumber*numbers.imaginaryNumber)
  end

  def to_s
    if imaginaryNumber > 0
      @realNumber.to_s + " + " +@imaginaryNumber.to_s + "i"
    elsif imaginaryNumber == 0
      @realNumber.to_s
    elsif realNumber == 0
      @imaginaryNumber.to_s
    else
      @realNumber.to_s + "" +@imaginaryNumber.to_s + "i"
    end
  end
end