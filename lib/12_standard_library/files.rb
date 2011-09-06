require 'fileutils'
require 'tempfile'

puts "* The File class has a number of useful class methods to get information about a file"

# __FILE__ is the path of this file
this_path = __FILE__
puts "\n__FILE__ == #{this_path}"
puts
class_methods = %w(dirname basename extname exists? executable? file? directory? size mtime)
class_methods.each do |class_method|
  puts "File.#{class_method} => #{File.send(class_method, this_path)}"
end

puts "\n* You can use File.join to join together a directory path and a filename"
dirname = File.dirname(__FILE__)
filename = File.basename(__FILE__)
puts "dirname == #{dirname}"
puts "filename == #{filename}"
puts "File.join(dirname, filename) => #{File.join(dirname, filename)}"

puts "\n* Use Tempfile to create a temporary file object with a unique path"
tempfile = Tempfile.new("my tempfile")
puts "tempfile.path => #{tempfile.path}"

puts "\n* Use FileUtils to access Unix type file operations"
puts <<-END

  cd(dir, options)
  mkdir(dir, options)
  mkdir_p(dir, options)
  rmdir(dir, options)
  ln_sf(src, dest, options)
  cp(src, dest, options)
  cp_r(src, dest, options)
  rm(list, options)
  rm_rf(list, options)
  chown(user, group, list, options)
  chown_R(user, group, list, options)
  touch(list, options)
END

puts "\n* Use Dir[] to get a file listing in a directory path from a glob pattern"
current_directory = File.dirname(__FILE__)
Dir[File.join(current_directory, '*')][0, 5].each do |path|
  puts File.basename(path)
end
puts "..."

puts "\n* Use File.read to read the whole contents of a file into a string"
puts "File.size(__FILE__) => #{File.size(__FILE__)}"
puts "File.read(__FILE__).size => #{File.read(__FILE__).size}"

puts "\n* Use File.readlines to read all lines in a file into an array"
File.readlines(__FILE__)[0, 5].each_with_index do |line, i|
  puts "  #{i}: #{line}"
end

puts "\n* Use File.open(path, 'w') do ... end to open a file for writing. Once the block ends, the file is closed:"
puts <<-END

  File.open("filename.txt", "w") do |file|
    file.puts('contents of file here')
  end
END
