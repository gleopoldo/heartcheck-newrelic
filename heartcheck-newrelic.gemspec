# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'heartcheck/newrelic/version'

Gem::Specification.new do |spec|
  spec.name = 'heartcheck-newrelic'
  spec.version = Heartcheck::Newrelic::VERSION
  spec.required_ruby_version = '>= 1.9'
  spec.authors = ['Locaweb']
  spec.email = ['desenvolvedores@locaweb.com.br']

  spec.summary = 'A Heartcheck plugin for New Relic'
  spec.homepage = 'https://github.com/locaweb/heartcheck-newrelic'

  spec.files = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(spec|bin)/}) }
  spec.require_paths = ['lib']

  spec.add_dependency 'heartcheck', '~> 1.0'
  spec.add_dependency 'newrelic_rpm', '~> 4.8'

  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
