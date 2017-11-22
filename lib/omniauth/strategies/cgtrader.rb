require 'omniauth-oauth2'

module Omniauth
  module Strategies
    class Cgtrader < OmniAuth::Strategies::OAuth2
      option :name, :cgtrader

      option :client_options,
             site:          ENV.fetch('CGT_API_BASE'),
             token_url:     "#{ENV.fetch('CGT_URL')}/oauth/token",
             authorize_url: "#{ENV.fetch('CGT_URL')}/oauth/authorize"

      uid do
        raw_info['id']
      end

      info do
        {
          username: raw_info['username'],
          email:    raw_info['email']
        }
      end

      def callback_url
        full_host + script_name + callback_path
      end

      def raw_info
        @raw_info ||= access_token.get('v1/users/me.json').parsed
      end
    end
  end
end
