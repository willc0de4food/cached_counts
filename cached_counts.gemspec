# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cached_counts/version'

Gem::Specification.new do |gem|
  gem.name          = "cached_counts"
  gem.version       = CachedCounts::VERSION
  gem.authors       = ["Mario Visic"]
  gem.email         = ["mario@mariovisic.com"]
  gem.description   = %q{Speed up ActiveRecord counting with caching}
  gem.summary       = %q{Uses the Rails cache to store cached counts for active record models as well as models with scopes}
  gem.homepage      = "https://github.com/desktoppr/cached_counts"
  gem.license       = "MIT"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}) { |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency "rake"
  gem.add_development_dependency "rspec"
  gem.add_development_dependency "activesupport"
  gem.add_development_dependency "activerecord"

  gem.add_dependency "rails", ">= 3.2"
end
