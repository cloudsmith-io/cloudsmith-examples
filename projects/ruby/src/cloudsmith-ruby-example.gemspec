# -*- encoding: utf-8 -*-
#

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'util/version'

Gem::Specification.new do |s|
  s.name        = 'cloudsmith-ruby-example'
  s.version     = Cloudsmith::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Cloudsmith Ltd']
  s.email       = ['support@cloudsmith.io']
  s.homepage    = 'https://cloudsmith.io/'
  s.summary     = 'Cloudsmith Ruby Example'
  s.description = 'Cloudsmith: Be Awesome. Automate Everything.'
  s.license     = 'Apache-2.0'
  s.required_ruby_version = '>= 1.9'

  s.files         = ['lib/example.rb']
  s.executables   = ['cloudsmith-ruby-example']
  s.require_paths = ['lib']
end
