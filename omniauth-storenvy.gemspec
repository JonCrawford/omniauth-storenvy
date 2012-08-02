# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth-storenvy/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Jeff Mehlhoff"]
  gem.email         = ["jeffmehlhoff@mac.com"]
  gem.description   = %q{Omniauth strategy for Storenvy}
  gem.summary       = %q{Omniauth strategy for Storenvy}
  gem.homepage      = "http://github.com/ohokay/omniauth-storenvy"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "omniauth-storenvy"
  gem.require_paths = ["lib"]
  gem.version       = Omniauth::Storenvy::VERSION

  gem.add_dependency 'omniauth', '~> 1.0'
  gem.add_dependency 'omniauth-oauth2', '~> 1.1.0'
  gem.add_dependency 'multi_json'

end