class Person
  attr_accessor :paid
  
  def initialize
    @paid = false
  end
  
  def make_payment
    # This sets a local variable instead of invoking the paid= accessor method
    # The local variable paid is shadowing the paid method.
    paid = true
    puts "inside make_payment, paid=#{paid}"
  end
end

person = Person.new
person.make_payment
puts "after make_payment, paid=#{person.paid}"
