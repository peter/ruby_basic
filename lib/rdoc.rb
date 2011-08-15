#
# The goal of this class is to illustrate how RDoc can be used.
# 
#
# == Installation
#
# Here we describe how to install this library.
#
# == Usage
#
# This text is under the second level header (Examples). Indented text is rendered
# in code font:
#
#   object = RDocExample.new
#   object.my_method(5, "foobar", true)
#
# Links are constructed with a label enclosed in curly brackets ({), followed by
# angle brackets containing the URL. Here is an example:
#
# {rdoc-3.9.2 Documentation}[http://rdoc.rubyforge.org/]
#
# Lists are created with asterisks (*) or dashes (-):
#
# * RDoc
# * Yard
# * TomDoc
#
# == Bugs
# 
# Where to file bugs for this library
#
# == Credits
#
# Who helped develop this library?
#
# == Yard Example
#
# For comparison, here is an example of a Yard method comment:
#
#  # Reverses the contents of a String or IO object. 
#  #
#  # @param [String, #read] contents the contents to reverse 
#  # @return [String] the contents reversed lexically 
#  def reverse(contents) 
#    contents = contents.read if respond_to? :read 
#    contents.reverse 
#  end
#
# Some of the tags supported by Yard are:
#  @param, @returns, @author, @example, @abstract, @deprecated,
#  @overload, @raise, @see, @since
#
# == TomDoc Example
#
#  # Duplicate some text an abitrary number of times.
#  #
#  # text  - The String to be duplicated.
#  # count - The Integer number of times to duplicate the text.
#  #
#  # Examples
#  #
#  #  multiplex('Tom', 4)
#  #  # => 'TomTomTomTom'
#  #
#  # Returns the duplicated String.
#  def multiplex(text, count)
#    text * count
#  end
class RDocExample
  # Does everything you ever wanted
  #
  # <tt>arg1</tt>:: Here we document the first argument
  # <tt>arg2</tt>:: Here we document the second argument
  # <tt>arg3</tt>:: Here we document the third argument
  #
  # Usage:
  #
  #   object = RDocExample.new
  #   object.my_method(5, "foobar", true)
  def my_method(arg1, arg2, arg3)    
  end
end
