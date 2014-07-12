# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'simple_provision/version'

Gem::Specification.new do |spec|
  spec.name          = "simple_provision"
  spec.version       = SimpleProvision::VERSION
  spec.authors       = ["Phuong Gia Su", "Brandon Hilkert"]
  spec.email         = ["phuongnd08@gmail.com", "brandonhilkert@gmail.com"]
  spec.description   = %q{The easiest, most common sense server provision tool.}
  spec.summary       = %q{The easiest, most common sense server provision tool.}
  spec.homepage      = "https://github.com/phuongnd08/simple_provision"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.add_dependency "net-scp"
  spec.add_dependency "net-ssh"
end
