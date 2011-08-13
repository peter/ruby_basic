puts "* You can create Regexp literals with // and use the =~ operator to match against a string"
if "Apples" =~ /^(apples|oranges)$/i
  puts '"Apples" =~ /^(apples|oranges)$/i => true'
end

puts "\n* Captured results are in the global variables $1, $2..."
string = "Apples Oranges"
puts "string = #{string}"
regexp = /(\w+)\s+(\w+)/
puts "regexp = #{regexp.inspect}"
string =~ regexp
puts "$1 == #{$1}"
puts "$2 == #{$2}"

puts "\n* The String#match method returns a MatchData object"
string = "Apples Oranges Bananas"
puts "string = #{string}"
regexp = /^(\w+)\s+(\w+)/
puts "regexp = #{regexp.inspect}"
match_data = string.match(regexp)
puts "match_data.captures => #{match_data.captures}"
puts "match_data.pre_match => #{match_data.pre_match}"
puts "match_data.post_match => '#{match_data.post_match}'"
puts "match_data.to_a => #{match_data.to_a}"

puts "\n* You can parallel-assign the String#match result into local variables"
match, language, framework = string.match(regexp).to_a
puts "language = #{language}"
puts "framework = #{framework}"

puts "\n* Do query and replace in a string with String#gsub"
string = "Apples and Oranges"
puts "string = #{string}"
puts "string.gsub(/Apples/, 'Bananas') => #{string.gsub(/Apples/, 'Bananas')}"

puts
puts '* You can use the common character classes like \s, \d, [0-9], \w, and repetition suffixes: ?, *, +, {m, n}, {m,}, {m}'

puts "\n* Useful regular expression modifiers: //i (ignore case), //m (multiline)"
