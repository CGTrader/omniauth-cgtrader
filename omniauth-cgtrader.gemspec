# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cgtrader/version'

Gem::Specification.new do |spec|
  spec.name                  = 'omniauth-cgtrader'
  spec.version               = Omniauth::Cgtrader::VERSION
  spec.authors               = ['devaudrius, mihkelal']
  spec.email                 = ['audrius@cgtrader.com, mihkelal@cgtrader.com']

  spec.summary               = 'CGTrader OAuth2 Strategy for OmniAuth'
  spec.homepage              = 'https://github.com/CGTrader/omniauth-cgtrader'
  spec.license               = 'MIT'

  spec.files                 = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables           = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths         = ['lib']

  spec.required_ruby_version = '>= 2.0'

  spec.add_dependency 'omniauth-oauth2', '~> 1.8'

  spec.add_development_dependency 'bundler', '~> 2.4.13'
end
