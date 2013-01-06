# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "trevors-rsp/version"

Gem::Specification.new do |s|
  s.name        = "trevors-rsp"
  s.version     = RSP::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Trevor Strieber"]
  s.email       = ["trevor@strieber.org"]
  s.homepage    = "https://github.com/TrevorS/trevors-rsp"
  s.description = '{A command-line Spotify player written in Ruby.'
  s.summary     = 'A command-line Spotify player written in Ruby using hallon and hallon-openal.'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_dependency 'hallon'
  s.add_dependency 'hallon-openal'
  s.add_dependency 'commander'

  s.required_ruby_version = '>= 1.9'
end
