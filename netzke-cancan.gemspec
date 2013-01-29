
$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)
require "netzke/cancan/version"

Gem::Specification.new do |s|
  s.name        = "netzke-cancan"
  s.version     = Netzke::CanCan::Version::STRING
  s.platform    = Gem::Platform::RUBY
  s.author      = "Georg Meyer"
  s.email       = "georgmeyer83@googlemail.com"
  s.homepage    = "http://github.com/scho/netzke-cancan"
  s.summary     = "Enables cancan in Netzke components"
  s.description = "Includes cancan controller helpers in all netzke components."

  s.files        = Dir["{lib,spec}/**/*", "[A-Z]*"] - ["Gemfile.lock"]
  s.require_path = "lib"

  s.add_development_dependency 'rspec', '~> 2.6.0'
  s.add_development_dependency 'rr', '~> 1.0.4'
  s.add_development_dependency 'rake', '~> 0.9'

  s.add_runtime_dependency 'cancan'
  s.add_runtime_dependency 'netzke-core'

  s.required_rubygems_version = ">= 1.3.4"
end
