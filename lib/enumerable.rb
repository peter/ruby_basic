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

# The People class holds a collection of Person objects
class People
  include Enumerable # Adds methods all?, any?, select, map, inject, sort etc.
  
  attr_accessor :array
  
  def initialize(array = [])
    self.array = array
  end
  
  # This method is needed by Enumerable
  def each(&block) 
    array.each(&block)
  end

  # The append operator (also works on String, IO etc.)
  def <<(person)
    array << person
  end

  # We want to support the square bracket array index operator
  def [](index)
    array[index]
  end
end

people = People.new
people << Person.new("Peter")
people << Person.new("Dennis")

puts "* Person at position 0 of unsorted collection:"
puts people[0].inspect

puts "\n* Iterating of the sorted collection of people:"
people.sort.each do |person|
  puts person.inspect
end

puts "\n* We can also iterate with a for loop if we like:"
for person in people
  puts person.inspect
end

puts "\n* We can convert our collection to an enumerator object:"
enumerator = people.to_enum
puts "class = #{enumerator.class.inspect}, max = #{enumerator.max}"
