# Constants defined outside any class/module can be accessed anywhere
GLOBAL_CONSTANT = 3.14

class MyClass
  # Constants defined in a class/module are available within that class/module and outside the class with the scope operator ::
  MY_CONSTANT = 3
  
  def my_method
    # Constants cannot be defined in methods
    puts GLOBAL_CONSTANT
    puts MY_CONSTANT # We don't need MyClass:: here since we are inside the class
  end
end

puts GLOBAL_CONSTANT
puts MyClass::MY_CONSTANT
MyClass.new.my_method
