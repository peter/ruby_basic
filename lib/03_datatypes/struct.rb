puts "\n* Use Struct.new to create a class with certain attribute accessors"
Rating = Struct.new(:name, :ratings)
rating = Rating.new("Apples", [1, 3, 4])

puts rating.name
puts rating.ratings.inspect
rating.ratings = [5, 5, 5]
puts rating.ratings.inspect

puts "\n* You can also choose to inherit from a Struct class"
class RatingWithAverage < Struct.new(:name, :ratings)
  def average
    ratings.inject {|sum, n| sum + n } / ratings.size.to_f
  end
end

rating = RatingWithAverage.new("Apples", [1, 2, 3]) 
puts "rating.average = #{rating.average}"

puts "\n* With OpenStruct you can use arbitrary attribute accessors, sort of like a hash"
require 'ostruct'
record = OpenStruct.new
puts "empty struct: " + record.inspect
record.name    = "John Smith"
record.age     = 70
record.pension = 300
puts "after setting some values: " + record.inspect
