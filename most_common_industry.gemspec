# -*- encoding: utf-8 -*-
require File.expand_path('../lib/most_common_industry/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["michael verdi"]
  gem.email         = ["michael.v.verdi@gmail.com"]
  gem.description   = %q{returns the top 6 most common industries for a given US city}
  gem.summary       = %q{returns the top 6 most common industries for a given US city}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "most_common_industry"
  gem.require_paths = ["lib"]
  gem.version       = MostCommonIndustry::VERSION

  gem.add_runtime_dependency('nokogiri')
  gem.add_runtime_dependency('open-uri')
end
