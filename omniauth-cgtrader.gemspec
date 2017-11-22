
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "cgtrader/version"

Gem::Specification.new do |spec|
  spec.name          = "omniauth-cgtrader"
  spec.version       = Omniauth::Cgtrader::VERSION
  spec.authors       = ["devaudrius"]
  spec.email         = ["audrius@cgtrader.com"]

  spec.summary       = %q{CGTrader OAuth2 Strategy for OmniAuth}
  spec.homepage      = 'https://github.com/CGTrader/cgtrader-omniauth'
  spec.license       = "MIT"


  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'omniauth', '~> 1.1'
  spec.add_dependency 'omniauth-oauth2', '>= 1.1.1', '< 2.0'

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
