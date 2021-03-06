# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'uucs_client/version'

Gem::Specification.new do |spec|
  spec.name          = "uucs_client"
  spec.version       = UucsClient::VERSION
  spec.authors       = ["Simon Weiler"]
  spec.email         = ["mail@simon-weiler.de"]


  spec.summary       = "This is the official ruby client for the uucs - user uploaded content server."
  spec.homepage      = "https://github.com/sweiler/uucs-ruby-client"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "rest-client", "~> 1.7"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
