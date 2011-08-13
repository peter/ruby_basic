require 'open-uri'

puts "* Wrap a piece of code to catch exceptions for in begin..rescue..end"
puts "- You may have multiple rescue blocks and each block specifies which types of exceptions to rescue"
puts "- Exception is the base class that will match all exceptions"
puts "- You can re-raise an exception by invoking 'raise' without arguments"
puts "- Re-execute the code that raised the exception by invoking 'retry'\n\n"

url = "http://some.url"
attempts = 0
begin
  contents = open(url).read
  puts contents
rescue SocketError => e
  puts "Could not open URL #{url}, attempts: #{attempts}: #{e}"
  attempts += 1
  retry unless attempts >= 3
rescue Exception => e
  puts "Unknown exception: #{e} #{e.backtrace.join("\n")}"
  raise
ensure
  puts "The ensure block will always execute, no matter what"
end

puts "\n* You can raise an exception of a specific type and specify an exception message"
puts "- You can specify your own application/API specific exception hierarchy"

module MyAPI
  class IllegalCalculation < RuntimeError; end

  def self.calculate(number)
    unless number >= 0
      raise IllegalCalculation, "The number argument must be positive but was #{number}"
    end
    Math.sqrt(number)
  end
end

MyAPI.calculate(1)
