# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cdjukebox/version'

Gem::Specification.new do |spec|
  spec.name          = "cdjukebox"
  spec.version       = Cdjukebox::VERSION
  spec.authors       = ["Shai Rosenfeld"]
  spec.email         = ["shaiguitar@gmail.com"]
  spec.description   = %q{native stuff}
  spec.summary       = %q{srs bzns}
  spec.homepage      = "http://shairosenfeld.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "binding.pry"

  # build!
  spec.extensions    << "ext/cdjukebox/extconf.rb"
end
