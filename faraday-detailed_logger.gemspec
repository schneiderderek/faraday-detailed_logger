# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'faraday/detailed_logger/version'

Gem::Specification.new do |spec|
  spec.name          = "faraday-detailed_logger"
  spec.version       = Faraday::DetailedLogger::VERSION
  spec.authors       = ["Envy Labs"]
  spec.email         = [""]

  spec.summary       = %q{A detailed request and response logger for Faraday.}
  spec.description   = %q{A Faraday middleware for logging request and response activity including method, URI, headers, and body at varying log levels.}
  spec.homepage      = "https://github.com/envylabs/faraday-detailed_logger"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "faraday"

  spec.add_development_dependency "appraisal", "~> 2.0"
  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "coveralls"
  spec.add_development_dependency "rake", "~> 11.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
