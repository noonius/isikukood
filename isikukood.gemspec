# -*- encoding: utf-8 -*-
require File.expand_path('../lib/isikukood/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Tanel Kosk"]
  gem.email         = ["tanel@noonius.net"]
  gem.description   = "Estonian personal identification number validator"
  gem.summary       = ""
  gem.homepage      = "http://github.com/noonius/isikukood"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "isikukood"
  gem.require_paths = ["lib"]
  gem.version       = Isikukood::VERSION
end
