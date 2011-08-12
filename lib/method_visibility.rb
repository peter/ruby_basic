class MyClass  
  # Methods are public by default

  def public_method
    puts "public_method invoked"
    private_method # You can invoke private methods from instance methods
    protected_method # You can invoke protected methods too
  end  

  protected  

  # Protected methods can be invoked by *any* instance of the same class or a
  # subclass of MyClass. So one object can invoke a protected method on another
  # object if they have a common super class. Protected methods can have an
  # explicit receiver.
  def protected_method
    puts "protected_method invoked"
  end

  private

  # Private methods can only be invoked within an instance of MyClass or a subclass
  # of MyClass. The receiver of a private method is always self. Private methods
  # can not have an explicit receiver.
  def private_method
    puts "private_method invoked"
  end
end

object = MyClass.new

object.public_method

begin
  object.protected_method
rescue => e
  puts "\nnot allowed to invoke protected here: " + e.message
end

begin
  object.private_method
rescue => e
  puts "not allowed to invoke private: " + e.message
end

class SubClass < MyClass
  def invoke_protected(object)
    puts "\nallowed to invoke protected now since we are 'in the family':"
    object.protected_method
  end
end

other_object = SubClass.new
other_object.invoke_protected(object)
