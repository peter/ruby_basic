Person = Struct.new(:name)
peter = Person.new("Peter")

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

puts "\n* Use respond_to? to check if an object implements a particular method"
puts "peter.respond_to?(:name) => #{peter.respond_to?(:name)}"
