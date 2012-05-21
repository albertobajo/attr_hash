# -*- encoding: utf-8 -*-
require File.expand_path('../lib/attr_hash/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Alberto Bajo"]
  gem.email         = ["albertobajo@gmail.com"]
  gem.description   = %q{TODO: Write a gem description}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "attr_hash"
  gem.require_paths = ["lib"]
  gem.version       = AttrHash::VERSION
  
  gem.add_dependency "activesupport", "~> 3.2.3"
  
  gem.add_development_dependency "rspec", "~> 2.10.0"
end
