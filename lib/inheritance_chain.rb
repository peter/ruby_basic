puts "* When you include modules in a class they are added between the class and the superclass:"

class MySuperClass
  def foobar
    puts "foobar in superclass"
  end
end

module FirstModule
  def foobar
    puts "foobar in firstmodule"
    super
  end
end

module SecondModule
  def foobar
    puts "foobar in secondmodule"
    super
  end
end

class MyClass < MySuperClass
  include FirstModule
  include SecondModule
  
  def foobar
    puts "foobar in myclass"
    super
  end
end

puts MyClass.ancestors.join(" < ")

puts "\n* Modules included later will come before (take precedence) over earlier modules"
object = MyClass.new
object.foobar
