puts "* Use eval to execute arbitrary strings as Ruby code. Provide a Binding object for the variable context"
def evaluate_code(code, binding)
  a = 2
  eval code, binding
end

a = 1
evaluate_code("puts a", binding) # => 1

print "\n* The class_eval and instance_eval methods are similar to eval but execute in a different context. "
puts "Use class_eval to enter into the context of a class definition (it's like opening up a class)"
class Person
  attr_accessor :name
  
  def initialize(name)
    self.name = name
  end
  
  def self.add_method(method)
    class_eval %Q{
      def #{method}
        puts "method #{method} invoked"
      end
    }
  end    

  add_method(:say_hi)
end

peter = Person.new("Peter")
peter.say_hi

puts "\n* Use instance_eval to execute code inside an object, with self set as the object. You can use it to get to instance variables"
puts peter.instance_eval { @name }
peter.instance_eval do
  say_hi
end

puts "\n* You can also use instance_eval to create a DSL (Domain Specific Language)"

puts <<-END

  # This example is from the book Ruby Best Practices by Gregory Brown.
  # Prawn is a PDF generation library. Without instance_eval, you might
  # right something like this to generate a PDF:
  pdf = Prawn::Document.new
  pdf.text "Hello World"
  pdf.render_file "hello.pdf"
  
  # Using instance_eval we can come up with a nice looking DSL instead:  
  Prawn::Document.generate("hello.pdf") do
   text "Hello World"
  end
  
  # The code for the generate method looks like this:   
  class Prawn::Document
   def self.generate(file, *args, &block)
     pdf = Prawn::Document.new(*args)
     pdf.instance_eval(&block)
     pdf.render_file(file)
   end
  end
END
