# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'shove_it/version'

Gem::Specification.new do |spec|
  spec.name          = "shove_it"
  spec.version       = ShoveIt::VERSION
  spec.authors       = ["Trae Robrock"]
  spec.email         = ["trobrock@gmail.com"]
  spec.description   = %q{A simple extendable deployment tool}
  spec.summary       = %q{A simple extendable deployment tool}
  spec.homepage      = "https://github.com/trobrock/shove_it"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "tailor"
  spec.add_development_dependency "coveralls"
end
