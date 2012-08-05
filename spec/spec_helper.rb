require 'rubygems'
require 'cancan'
require 'bundler/setup'

Bundler.require(:default)

require 'active_support/all'

RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.filter_run :focus => true
  config.run_all_when_everything_filtered = true
  config.mock_with :rr
end

class Ability
  include CanCan::Ability

  def initialize(user)
  end
end

class TestComponent < Netzke::Base

end