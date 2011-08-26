class ComplexNumber
  attr_accessor :real, :imaginary
  
  def initialize(real, imaginary)
    self.real = real
    self.imaginary = imaginary
  end
  
  def +(other)
    puts "#{self} + #{other}"
  end
  
  def -(other)
    puts "#{self} - #{other}"
  end
  
  def /(other)
    puts "#{self} / #{other}"
  end
  
  def *(other)
    puts "#{self} * #{other}"
  end
  
  def to_s
    "#{real}+#{imaginary}i"
  end
end

first = ComplexNumber.new(1, 0)
second = ComplexNumber.new(0, 1)
first + second
first - second
first / second
first * second
