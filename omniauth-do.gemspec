# -*- encoding: utf-8 -*-

require File.expand_path('../lib/omniauth-do/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name          = 'omniauth-do'
  gem.version       = OmniAuth::Do::VERSION
  gem.authors       = ["Austin Bales"]
  gem.email         = ["austin@do.com"]
  gem.license       = 'MIT'
  gem.homepage      = 'https://github.com/do/omniauth-do'
  gem.description   = 'Official OmniAuth strategy for Do (do.com).'
  gem.summary       = 'Official OmniAuth strategy for Do (do.com).'

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.require_paths = ['lib']

  gem.add_dependency 'omniauth', '~> 1.0'
  gem.add_dependency 'omniauth-oauth2', '~> 1.1'
  gem.add_development_dependency 'rspec', '~> 2.7'
  gem.add_development_dependency 'rack-test'
  gem.add_development_dependency 'simplecov'
  gem.add_development_dependency 'webmock'
end
