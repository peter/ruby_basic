class Person
  attr_accessor :name
  
  def initialize(name)
    self.name = name
  end
end

person = Person.new("Andreas")
puts person.name
person.name = "David"
puts person.name
