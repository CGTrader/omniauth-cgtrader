# frozen_string_literal: true

require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Cgtrader < OmniAuth::Strategies::OAuth2
      option :client_options,
             site: 'https://api.cgtrader.com',
             token_url: 'https://www.cgtrader.com/oauth/token',
             authorize_url: 'https://www.cgtrader.com/oauth/authorize'

      uid do
        raw_info['id']
      end

      info do
        {
          username: raw_info['username'],
          email: raw_info['email'],
          is_admin: raw_info['is_admin'],
          avatar_url: raw_info['avatar_url']
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
