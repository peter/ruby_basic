require 'open3'

puts "\n* Use system to execute any external program and check the return value and $? for status"

if system("pwd")
  puts "\nWe were able to execute pwd"
  puts $?.inspect
end

if !system("foobar")
  puts "\nWe could not execute foobar"
  puts $?.inspect
end

puts "\n* You can easily capture the output from a command with backticks, here is the hostname:"
puts `hostname`

puts "\n* Use Open3 for better control over stdin, stdout, and stderr"
stdin, stdout, stderr = Open3.popen3("pwd")
puts stdout.read
