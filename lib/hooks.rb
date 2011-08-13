# Adds the current directory to the Ruby load path
# The reason we do this here is so that we can Ruby will find the Person
# class when we require it. You can invoke ruby on the command line with the I option
# to add directories to the load path.
$:.unshift(File.dirname(__FILE__))

# Makes sure a class is required automatically whenever it is used.
# This is a naive implementation.
def Object.const_missing(name) 
  @looked_for ||= {} 
  str_name = name.to_s 
  raise "Class not found: #{name}" if @looked_for[str_name] 
  @looked_for[str_name] = 1 
  file = str_name.downcase 
  require file 
  klass = const_get(name) 
  return klass if klass 
  raise "Class not found: #{name}" 
end

person = Person.new("Peter")
person.say_hi
