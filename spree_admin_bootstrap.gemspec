# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_admin_bootstrap'
  s.version     = '1.3.2'
  s.summary     = 'Use twitter bootstrap for spree admin'
  s.required_ruby_version = '>= 1.8.7'

  s.author    = 'Oxpeck'
  s.email     = 'info@oxpeck.nl'
  s.homepage  = 'http://www.oxpeck.nl'

  #s.files       = `git ls-files`.split("\n")
  #s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'
end
