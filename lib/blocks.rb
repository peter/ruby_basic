puts "* Blocks can optionally be passed as the last parameter to a method"
puts "- Blocks can accept one or more arguments"
puts "- By convention one-line blocks use curly braces '{}' and multiline blocks do...end"
puts "- To invoke a block passed to a method you call yield"

def time_code
  before = Time.now
  yield
  Time.now - before
end

elapsed = time_code do
  puts "in the code block"
end

puts "elapsed time == #{elapsed} seconds"

puts "\n* A proc object is a code block that can be assigned to a variable"
puts "- A code block is more than the code to be executed, it also contains the variable bindings (it's a closure)"
puts "- A block can be converted to a Proc object with the ampersand operator '&'\n"

local_variable = 4
my_proc = Proc.new { puts "running my block with local_variable == #{local_variable}" }
elapsed = time_code(&my_proc)
puts "elapsed time == #{elapsed}"

my_proc = Proc.new { |number| number**2 }
puts my_proc.call(5)

def time_code_verbose(&block)
  puts "Starting execution of code defined at: #{block.source_location}"
  elapsed = time_code(&block)
  puts "Executing code took #{elapsed}"
end

time_code_verbose { puts "code inside verbose timing" }

puts "\n* A Proc can change the value of local variables in its scope"
total = 0
[1, 2, 3].each { |value| total += value }
puts "total == #{total}"

puts "\n* Using Proc objects makes it possible to pass multiple blocks of code to a method"

def callbacks(procs)
  procs[:starting].call
  puts "Still going"
  procs[:finishing].call
end

callbacks(:starting => Proc.new { puts "Starting" },
          :finishing => Proc.new { puts "Finishing" })

puts "\n* Proc objects can also be created with the lambda method"
puts "- Lambdas are very similar to procs, but they behave more like methods - they differ in how they deal with return statements and are stricter about the number of arguments you pass to them"

my_lambda = lambda { |number| number**2 }
puts "lambda class == #{my_lambda.class}"
puts my_lambda.call(5)

puts "\n* An alternative syntax for creating lambdas is ->(args) {}"

my_lambda = ->(number) { number**2 }
puts my_lambda.call(5)

callbacks(:starting => ->{ puts "Starting in ->"},
          :finishing => ->{ puts "Finishing in ->"})

puts "\n* There is a Symbol shortcut for when all your code block is doing is invoking a method"
puts %w(apples bananas).map(&:upcase).inspect
puts %w(apples bananas).map { |word| word.upcase }.inspect

puts "\n* Example usage of code blocks:"
puts <<'END'
  # Iteration
  [1, 2, 3].each { |item| puts item }

  # Resource Management
  File.open("file.txt", "w") do |file|
    file.puts "foobar"
  end

  # Callbacks
  widget.on_button_press do
    puts "Got button press"
  end
END
