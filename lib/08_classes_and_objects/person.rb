class Person
  def initialize(name)
    @name = name
  end

  def say_hi
    puts "#{@name} says hi"
  end
end

if __FILE__ == $0 # Enter here if this file is executed standalone but not if it's required by other file
  andreas = Person.new("Andreas")
  andreas.say_hi
end
