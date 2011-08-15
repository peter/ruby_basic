# This example was borrowed from the "Programming Ruby" book by Dave Thomas.
#
# Check out the story behind how rake was created by Jim Weirich:
# http://rake.rubyforge.org/files/doc/rational_rdoc.html

# The code below would go in a file called Rakefile and would make three tasks available
# on the command line: delete_unix_backups, delete_windows_backups, and delete_backups
#
# For an alternative to rake for invoking Ruby methods from the command line, check out
# Thor:
#
# http://yehudakatz.com/2008/05/12/by-thors-hammer
# https://github.com/wycats/thor
# http://stackoverflow.com/questions/3524296/rake-vs-thor-for-automation-scripts
#

require 'rake'

include Rake::DSL

def delete(pattern)
  files = Dir[pattern]
  rm(files, verbose: true) unless files.empty?
end

desc "Remove files whose names end with a tilde"
task :delete_unix_backups do
  delete "*~"
end

desc "Remove files with a .bak extension"
task :delete_windows_backups do
  delete "*.bak"
end

desc "Remove Unix and Windows backup files"
task :delete_backups => [ :delete_unix_backups, :delete_windows_backups ] do
  puts "All backups deleted"
end
