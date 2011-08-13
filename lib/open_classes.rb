puts "* With alias_method we can create a new name for a method. This allows us to re-implement the method"
class Peter
  def say_hi
    puts "Hi"
  end
end

class Peter
  alias_method :say_hi_orig, :say_hi
  def say_hi
    puts "Before say hi"
    say_hi_orig
    puts "After say hi"
  end
end

Peter.new.say_hi

puts "\n* Integers have a small? method: #{2.respond_to?(:small?) ? 'yes' : 'no, of course not, how silly'}"

class Integer
  def small?
    self < 10
  end
  alias_method :not_big?, :small?
  
  def big?
    !small?
  end
end

puts "\n* Integers have a small? method after patching Integer: #{2.respond_to?(:small?) ? 'yes' : 'no'}"
puts "2.small? => #{2.small?}"
puts "2.not_big? => #{2.not_big?}"
puts "2.big? => #{2.big?}"

class Integer
  def seconds
    self
  end
  
  def hours
    self*3600
  end
  
  def ago
    Time.now - self
  end
end

puts "\n* The ActiveSupport library has shown that adding methods to the standard library can be useful"
puts "Time.now => #{Time.now}"
puts "2.seconds.ago => #{2.seconds.ago}"
puts "2.hours.ago => #{2.hours.ago}"
