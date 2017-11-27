# -*- encoding: utf-8 -*-
#

$:.push File.expand_path('../lib', __FILE__)

Gem::Specification.new do |s|
  s.name        = 'csm-ruby-example'
  s.version     = '1.0'
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Cloudsmith Ltd']
  s.email       = ['support@cloudsmith.io']
  s.homepage    = 'https://cloudsmith.io/'
  s.summary     = 'Cloudsmith Ruby Example'
  s.description = 'Cloudsmith: Be Awesome. Automate Everything.'
  s.license     = 'Apache-2.0'
  s.required_ruby_version = '>= 1.9'

  s.files         = ['lib/example.rb']
  s.executables   = ['csm-ruby-example']
  s.require_paths = ['lib']
end
