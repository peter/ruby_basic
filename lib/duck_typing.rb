# This thermostat example was drawn from the "SOLID Ruby" presentation by Jim Weirich, see:
#
# http://confreaks.net/videos/185-rubyconf2009-solid-ruby
#
# Suppose we have a thermostat that monitors the temperature and turns a furnace
# (heater) on or off as needed. The Thermostat class depends on the Furnace class
# but not the other way around. With a UML arrow we can illustrate the dependency like this:
#
# Thermostat -> Furnace
#
# What if we wanted the thermostat to turn other devices on or off, say a light or
# a fan. How can we introduce that kind of flexibility? In a typed language like
# Java we would introduce an OnOffDevice interface that allows us to break the
# dependency like this:
#
# Thermostat -> OnOffDevice <- Furnace
#
# We now have a so called dependency inversion setup where both of our classes
# depend on an abstraction - the OnOffDevice interface.
#
# The interesting thing about Duck Typing, is that typically, since you don't
# declare the types of method arguments, you are never depending directly on a class
# but rather on a set of methods, i.e. an interface or protocol. So in Ruby
# we really have this dependency situation:
#
# Thermostat -> <on-off-protocol> <- Furnace
#
# The code below illustrates this.

class Furnace
  def initialize
    off
  end
  
  def on
    # Code to turn Furnace on
  end
  
  def off
    # Code to turn Furnace off
  end
end

class Thermostat
  # Creates a new Thermostat object
  #
  # @param [#on, #off] furnace on/off device that the thermostat will control
  def initialize(furnace)
    # Note that we could add assertions
    # in the code here (by using respond_to?) to try to ensure that the furnace object has
    # the methods that we expect. In practice though, such assertions would probably
    # add little value.
    @furnace = furnace
  end
  
  def run
    if should_be_on?
      @furnace.on
    else
      @furnace.off
    end
  end
end

# A real example of a well specified Ruby protocol is the Rack
# webserver interface, specified here:
#
# http://rack.rubyforge.org/doc/SPEC.html
#
# "A Rack application is an Ruby object (not a class) that responds to call.
#  It takes exactly one argument, the environment and returns an Array of
#  exactly three values: The status, the headers, and the body."
#
# Here is what the specification says about the body object that is returned by the call
# method:
#
# "The Body must respond to each and must only yield String values. The Body itself should
#  not be an instance of String, as this will break in Ruby 1.9. If the Body responds to
#  close, it will be called after iteration. If the Body responds to to_path, it must
#  return a String identifying the location of a file whose contents are identical to 
#  that produced by calling each; this may be used by the server as an alternative,
#  possibly more efficient way to transport the response. The Body commonly is an
#  Array of Strings, the application instance itself, or a File-like object."
#
# Note how the Rack protocol is strict and well specified. The protocol is also quite
# narrow and it helps minimize the dependency between the webserver and the application.
# The protocol thus allows for a lot of flexibility in what classes and objects you use.
#
# Here is an example of a simple Rack application.

class MyRackApplication
  def call(env)
    body = "Hello, World!"
    [200, {"Content-Type" => "text/plain", "Content-Length" => body.length.to_s}, [body]]    
  end
end  
