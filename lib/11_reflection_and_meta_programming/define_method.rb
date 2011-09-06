puts "* You can use define_method as an alternative to class_eval to define methods dynamically"
class Array
  {:second => 1, :third => 2}.each do |method, element|
    define_method(method) do
      self[element]
    end
  end

  {:fourth => 3, :fifth => 4}.each do |method, element|
    class_eval %Q{
      def #{method}
        self[#{element}]
      end
    }
  end
end

array = %w(A B C D E)
puts array.first
puts array.second
puts array.third
puts array.fourth
puts array.fifth
