# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "ruby_basic/version"

Gem::Specification.new do |s|
  s.name        = "ruby_basic"
  s.version     = RubyBasic::VERSION
  s.authors     = ["Peter Marklund"]
  s.email       = ["peter@marklunds.com"]
  s.homepage    = "https://github.com/peter/ruby_basic"
  s.summary     = %q{Course material for a two day introductory course to Ruby programming}
  s.description = %q{Contains slides, example code, and exercises for a two day Ruby course}

  s.rubyforge_project = "ruby_basic"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
