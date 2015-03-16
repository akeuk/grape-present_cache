# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'grape/present/cache/version'

Gem::Specification.new do |spec|
  spec.name          = "grape-present-cache"
  spec.version       = Grape::Present::Cache::VERSION
  spec.authors       = ["u2"]
  spec.email         = ["zhangyaning1985@gmail.com"]
  spec.summary       = %q{Cache present model for Grape.}
  spec.description   = %q{Cache present model for Grape.}
  spec.homepage      = "https://github.com/u2/grape-present-cache"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "grape"
  spec.add_dependency "activesupport"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
