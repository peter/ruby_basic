class Person
  attr_accessor :personnummer # Social security number used in Sweden to identify a person
  
  def initialize(personnummer)
    self.personnummer = personnummer
  end
  
  def ==(other)
    other.class == self.class && personnummer == other.personnummer
  end
end

peter1 = Person.new("741022-8535")
peter2 = Person.new("741022-8535")

puts "* The peter1 and peter2 objects are different objects in memory:"
puts "peter1.object_id = #{peter1.object_id}"
puts "peter2.object_id = #{peter2.object_id}"
puts "peter1.equal?(peter2) => #{peter1.equal?(peter2)}"

puts "\n* But they are equal in the sense that they represent the same person (contents)"
puts "peter1 == peter2 => #{peter1 == peter2}"
