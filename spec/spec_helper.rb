require 'bundler/setup'
require 'omniauth'
require 'omniauth/strategies/cgtrader'

RSpec.configure do |config|
  config.extend  OmniAuth::Test::StrategyMacros, :type => :strategy
end
