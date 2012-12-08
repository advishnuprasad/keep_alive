# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'keep_alive/version'

Gem::Specification.new do |gem|
  gem.name          = "keep_alive"
  gem.version       = KeepAlive::VERSION
  gem.authors       = ["A D Vishnu Prasad"]
  gem.email         = ["advishnuprasad@gmail.com"]
  gem.description   = %q{Gem that will give you whether the app & db is alive or not}
  gem.summary       = %q{Gem that will give you whether the app & db is alive or not}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  # gem.add_development_dependency 'rake'
  # gem.add_development_dependency 'rspec'
  gem.add_runtime_dependency "rails", ">= 3.0.1"
end
