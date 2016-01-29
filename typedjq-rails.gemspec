# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'typedjq/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "typedjq-rails"
  spec.version       = Typedjq::Rails::VERSION
  spec.authors       = ["GeorgioWan"]
  spec.email         = ["georgio.wan@gmail.com"]

  spec.summary       = %q{Typed.js for rails}
  spec.description   = %q{Typed.js for rails, Typed.js is a jQuery plugin that types by mattboldt.}
  spec.homepage      = "https://github.com/GeorgioWan/typedjq-rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency  'rails', "~> 4.0"
  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
