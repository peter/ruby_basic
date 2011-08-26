puts "* The $:/$LOAD_PATH variable holds an array of directories to search for Ruby code"
puts "\n$: == $LOAD_PATH => #{$: == $LOAD_PATH}\n\n"

$LOAD_PATH[0, 5].each do |dir|
  puts dir
end

begin
  require 'person'
rescue LoadError
  puts "\n* We cannot load the Person class yet since its directory is not in the load path"
end

person_dir = File.expand_path(File.join(File.dirname(__FILE__), '..', '03_classes_and_objects'))
puts "\nAdding #{person_dir} to load path"
$: << person_dir

require 'person'
Person.name # Try accessing the class
puts "\n* The Person class could now be loaded and accessed"
