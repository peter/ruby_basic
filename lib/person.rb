class Person
  def initialize(name)
    @name = name
  end

  def say_hi
    puts "#{@name} says hi"
  end
end

if __FILE__ == $0
  andreas = Person.new("Andreas")
  andreas.say_hi
end
