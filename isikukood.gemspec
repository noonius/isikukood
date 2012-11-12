# -*- encoding: utf-8 -*-

Gem::Specification.new do |gem|
  gem.authors       = ["Tanel Kosk"]
  gem.email         = ["tanel@noonius.net"]
  gem.description   = "Estonian personal identification number validator"
  gem.summary       = "Ruby gem to validate and extract information out of Estonian Personal Identification number"
  gem.homepage      = "https://github.com/noonius/isikukood"

  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- test/*`.split("\n")
  gem.name          = "isikukood"
  gem.require_paths = ["lib"]
  gem.version       = '0.1.2'
  
  gem.add_development_dependency 'riot',    '~> 0.12.3'
  gem.add_development_dependency 'rake'
end
