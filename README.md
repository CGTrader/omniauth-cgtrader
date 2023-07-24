# Omniauth Cgtrader

Cgtrader OAuth2 Strategy for OmniAuth.

## Installation

Add to your `Gemfile`:

```ruby
gem 'omniauth-cgtrader'
```

Then `bundle install`.

## Usage

`OmniAuth::Strategies::Cgtrader` is simply a Rack middleware. Read the OmniAuth docs for detailed instructions: https://github.com/intridea/omniauth.

Here's a quick example, adding the middleware to a Rails app in `config/initializers/omniauth.rb`:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :cgtrader, ENV['CGT_API_ID'], ENV['CGT_API_SECRET']
end
```

## Auth Hash

Here's an example *Auth Hash* available in `request.env['omniauth.auth']`:

```ruby
{
  provider: 'cgtrader',
  uid: '1234567',
  info: {
    id: '123',
    email: 'joe@bloggs.com',
    username: 'joe_bloggs',
    is_admin: false,
    avatar_url: 'https://upload.wikimedia.org/wikipedia/commons/8/89/Portrait_Placeholder.png'
  },
}
```

## Devise

See these on how to use this gem with Devise, replacing Google / Facebook with Cgtrader:
* https://github.com/zquestz/omniauth-google-oauth2/blob/master/README.md#devise
* https://github.com/heartcombo/devise/wiki/OmniAuth:-Overview
