class Person
  include Comparable # Defines the methods <, <=, ==, =>, >

  attr_accessor :name
  
  def initialize(name)
    self.name = name
  end

  # The comparison operator - should return -1, 0, or 1
  def <=>(other)
    self.name <=> other.name
  end
end

people = []
peter = Person.new("Peter")
dennis = Person.new("Dennis")
people << peter
people << dennis

puts "* Unsorted list:"
puts people.inspect

puts "\n* Sorted list:"
puts people.sort.inspect

puts "\n* dennis < peter"
puts dennis < peter
