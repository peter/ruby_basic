class Person
  def my_instance_method
  end
  
  def self.my_class_method    
  end
  
  private
  
  def my_private_instance_method
  end
end

peter = Person.new

puts "* Use class, superclass, ancestors, instance_of?, and is_a? to query about classes and modules of an object"
puts "#{peter.class} < #{peter.class.superclass}"
puts peter.class.ancestors.join(", ")
puts "peter.instance_of?(Object) => #{peter.instance_of?(Object)}"
puts "peter.instance_of?(Person) => #{peter.instance_of?(Person)}"
puts "peter.is_a?(Object) => #{peter.is_a?(Object)}"
 
puts "\n* Use instance_methods(false) on the class to query about the instance methods"
puts Person.instance_methods(false).join(", ")
 
puts "\n* Use methods(false) on the class to query about class methods"
puts Person.methods(false).join(", ")

puts "\n* You can also query the object directly for all its public methods"
puts "peter.methods => #{peter.methods.inspect}"

puts "\n* Only public methods not inherited (the false argument excludes inherited methods):"
puts "peter.public_methods(false) => #{peter.public_methods(false).inspect}"

puts "\n* Only private methods not inherited:"
puts "peter.private_methods(false) => #{peter.private_methods(false).inspect}"

puts "\n* Use respond_to? to check if an object implements a particular method"
puts "peter.respond_to?(:my_instance_method) => #{peter.respond_to?(:my_instance_method)}"
