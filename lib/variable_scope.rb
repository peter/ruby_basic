$global_variable = 1 # Available everywhere

class MyClass
  @@class_variable = 2 # Available in instance methods and class methods

  def initialize
    @instance_variable = 3 # Available in instance methods
  end
  
  def print_variables
    local_variable = 4 # Available only in this method
    puts "global_variable=#{$global_variable}" +
      " class_variable=#{@@class_variable}" +
      " instance_variable=#{@instance_variable}" +
      " local_variable=#{local_variable}"
  end
end

object = MyClass.new
object.print_variables
