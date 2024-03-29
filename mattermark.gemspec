# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mattermark/version'

Gem::Specification.new do |spec|
  spec.name          = "mattermark"
  spec.version       = Mattermark::VERSION
  spec.authors       = ["Andrew Thorp"]
  spec.email         = ["andrewpthorp@gmail.com"]
  spec.summary       = %q{Ruby client for the mattermark API.}
  spec.description   = %q{Ruby client for the mattermark API, something something longer.}
  spec.homepage      = "https://github.com/andrewpthorp/mattermark"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "vcr", "~> 2.9.2"
  spec.add_development_dependency "webmock", "~> 1.18.0"
  spec.add_development_dependency "pry"
  spec.add_runtime_dependency "rest-client", "~> 1.7.2"
end
