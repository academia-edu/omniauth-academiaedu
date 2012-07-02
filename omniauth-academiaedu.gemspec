# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "omniauth-academiaedu/version"

Gem::Specification.new do |s|
  s.name        = "omniauth-academiaedu"
  s.version     = Omniauth::Academiaedu::VERSION
  s.authors     = ["Ryan Lower"]
  s.email       = ["rpjlower@gmail.com"]
  s.homepage    = "http://academia.edu/"
  s.summary     = "Academia.edu strategy for OmniAuth"

  s.rubyforge_project = "omniauth-academiaedu"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency 'omniauth-oauth2', '~> 1.0.0'

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
