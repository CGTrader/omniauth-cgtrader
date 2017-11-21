# Omniauth Cgtrader

Cgtrader OAuth2 Strategy for OmniAuth.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'omniauth-cgtrader'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install omniauth-cgtrader

## Usage

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :cgtrader, ENV['CGT_API_ID'], ENV['CGT_API_SECRET']
end
```
