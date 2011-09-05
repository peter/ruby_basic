module HasAge
  MIDDLE_AGE = 40
  
  def age=(age)
    @age = age
  end
  
  def age
    @age
  end
  
  def old?
    age > MIDDLE_AGE
  end
end

class Person
  include HasAge
  attr_accessor :name
  
  def initialize(name)
    self.name = name
  end
end

peter = Person.new("Peter")
peter.age = 36
puts peter.age
puts peter.old?
