# coding: utf-8

puts "* Equality - strings are mutable:"
a = "Ruby"
b = "Ruby"
print "the object_ids differ" if a.object_id != b.object_id
puts " but the == operator returns true" if a == b

puts "\n* Concatenate strings with the + operator (produces new string)"
puts "Ruby" + " on " + "Rails"

puts "\n* Append to a string with the << operator (modifies the string)"
a = "Ruby"
a << " is easy!"
puts "a = #{a}"

puts "\n* Double quoted string literals can interpolate any expression with \#{...}"
puts "time is: #{Time.now}"

puts "\n* Double quoted string literals have backslash escapes and can encode any Unicode character"
puts "line break: \n, double quote: \", backslash: \\, euro sign: \u20ac"

puts "\n* Single quoted string literals don't do interpolation. "
puts 'time is: #{Time.now}'

puts "\n* Single quoted string literals can contain single quotes and backslash if they are backslashed"
puts 'single quote: \', backslash: \\'

puts "\n* You can choose your own delimiter for double and single quoted strings with " +
  "%Q (duoble quoted) and %q (single quoted). As delimiter you may use (), [], {}, <>, or |, or anything else"
puts %Q{single "quoted" with %Q}
puts %q{single 'quoted' with %q}
puts %q|single 'quoted' with %q and \| as a delimiter|

puts "\n* Access substrings with the [] operator"
puts "Ruby[1] == #{'Ruby'[1]}"
puts "Ruby[0, 2] == #{'Ruby'[0,2]}"
puts "Ruby[0..2] == #{'Ruby'[0..2]}"
puts "Ruby[1..-1] == #{'Ruby'[1..-1]}"

puts "\n* You can replace substrings with []="
a = "Ruby"
a[2..-1] = "de"
puts "a == #{a}"

puts "\n* The split and scan methods are useful for splitting a string into an array"
puts "we split words by  space".split(/\s+/).join(", ")
puts "we split words by space".scan(/\w+/).join(" | ")

puts "\n* Ruby offers here-documents delimited with <<END...END for multiline strings"
puts <<END
  The time
  is #{Time.now}
END

puts "\n* If you want the here-document to be single quoted, use <<'END'..END"
puts <<'END'
  The time
  is #{Time.now}
END

puts "\n* Source code and literal strings are ASCII by default but can be configured for UTF-8"
puts "'ÅÄÖ'.encoding == #{'ÅÄÖ'.encoding}, 'ÅÄÖ'.size == #{'ÅÄÖ'.size}"

require "unicode_utils"

puts "\n* The upcase/downcase methods don't work on plain UTF-8 strings so you need to use the unicode_utils gem"
puts "'åäö'.upcase == #{'åäö'.upcase}"
puts "UnicodeUtils.upcase('åäö') == #{UnicodeUtils.upcase('åäö')}"
