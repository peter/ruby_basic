class Person
  def initialize(name)
    @name = name
  end

  def say_hi
    puts "#{@name} says hi"
  end
end

andreas = Person.new("Andreas")
andreas.say_hi
