require 'person'

class Programmer < Person
  def initialize(name, favorite_ide)
    super(name)
    @favorite_ide = favorite_ide
  end

  # We are overriding say_hi in Person
  def say_hi
    super
    puts "Favorite IDE is #{@favorite_ide}"
  end
end

peter = Programmer.new("Peter", "TextMate")
peter.say_hi
