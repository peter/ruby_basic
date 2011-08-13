puts "* In the global context, the current object is the main object"
puts self.inspect + ": " + self.class.ancestors.join(" < ")

puts "\n* Inside a class definition the current object is the class object itself"
class MyClass
  puts self.inspect
  
  def foobar
    puts self.inspect
  end
end

puts "\n* Inside an instance method the current object is the object the instance"

object = MyClass.new
object.foobar
