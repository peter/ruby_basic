puts "* Using method_missing, we can delegate any method calls from one object to another"

class VCR
  def initialize
    @messages = []
  end

  def method_missing(method, *args, &block)
    @messages << [method, args, block]
  end

  def play_back_to(obj)
    @messages.each do |method, args, block|
      obj.send(method, *args, &block)
    end
  end
end

Person = Struct.new(:name)
peter = Person.new
puts "Initially: name = '#{peter.name}'"

vcr = VCR.new
vcr.name = "Peter"
vcr.play_back_to(peter)
puts "After playback with VCR: name = '#{peter.name}'"

puts "\n* With method_missing in your class, any methods can be invoked on your objects"

class MyClass
  def method_missing(method, *args, &block)
    puts "method_missing invoked with #{method} #{args}"
  end  
end

my_object = MyClass.new
my_object.this_method_does_not_exist_i_think(2, 5)

puts "\n* With send you can do dynamic method invocations"
object = "Let's Send Some Methods"
%w(upcase downcase split).each do |method|
  puts "invoking method #{method}: #{object.send(method)}"
end
puts "invoking gsub('Methods', 'Messages'): #{object.send(:gsub, 'Methods', 'Messages')}"
