require 'omniauth-oauth2'

SITE_URL = "https://do.com"

module OmniAuth
  module Strategies
    class Deathstar < OmniAuth::Strategies::OAuth2
      option :name, "deathstar" 
      option :client_options, {
        :site => SITE_URL,
        :authorize_url => SITE_URL = '/oauth2/authorize',
        :token_url => SITE_URL = '/oauth2/token'
      }

      uid {raw_info['id']}

      info do
        {
          name: raw_info['name'],
          first_name: raw_info['first_name'],
          last_name: raw_info['last_name'],
          email: raw_info['email'],
          image: raw_info['avatar']['48']
        }
      end

      extra do
        {:raw_info => raw_info}
      end
 
      def raw_info
        @raw_info ||= access_token.get('/account.json').parsed || {}
      end

    end
  end
end
