class Person
  # Use def self.method_name to define a class method
  def self.class_method1
    puts "class_method1 in Person"
  end

  # Alternatively, wrap class methods in class << self ... end
  class << self
    def class_method2
      puts "class_method2 in Person"
    end
    
    def class_method3
      puts "class_method3 in Person"
    end
  end
end

class RubyProgrammer < Person
  def self.class_method1
    puts "class_method1 in RubyProgrammer"
    super
  end
end

puts "* Invoking class methods on the base class"
Person.class_method1
Person.class_method2
Person.class_method3

puts "\n* Class methods can be invoked on subclasses as well"
RubyProgrammer.class_method1
