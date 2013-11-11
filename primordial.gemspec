# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'primordial/version'

Gem::Specification.new do |spec|
  spec.name          = "primordial"
  spec.version       = Primordial::VERSION
  spec.authors       = ["John Koht"]
  spec.email         = ["john@kohactive.com"]
  spec.description   = "Simple, standard and elegant CSS structures"
  spec.summary       = "Simple, standard and elegant CSS structures"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.add_dependency "sass", ">= 3.0"
  spec.add_dependency "bourbon", ">= 2.1"
end
