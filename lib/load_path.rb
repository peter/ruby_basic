puts "* The $:/$LOAD_PATH variable holds an array of directories to search for Ruby code"
puts "\n$: == $LOAD_PATH => #{$: == $LOAD_PATH}\n\n"

$LOAD_PATH.each do |dir|
  puts dir
end

begin
  require 'person'
rescue LoadError
  puts "\n* We cannot load the Person class yes since the current dir (lib) is not in the load path"
end

current_dir = File.dirname(__FILE__)
puts "\nAdding #{current_dir} to load path"
$: << File.dirname(__FILE__)

require 'person'
Person # Try accessing the class
puts "\nThe Person class could now be loaded and accessed"
