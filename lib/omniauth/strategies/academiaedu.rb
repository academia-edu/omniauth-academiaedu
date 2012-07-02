require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class AcademiaEdu < OmniAuth::Strategies::OAuth2

      option :client_options, {
        :site => 'http://api.academia.edu',
        :authorize_url => 'http://academia.edu/oauth/authorize'
      }

      def request_phase
        super
      end

      uid { raw_info['id'] }

      info do
        {
          :name => raw_info['display_name'],
          :email => raw_info['email'],
          :urls => {
            :profile => raw_info['url']
          }
        }
      end

      extra do
        { :raw_info => raw_info }
      end

      def raw_info
        @raw_info ||= access_token.get('/v0/user.json').parsed
      end

      def callback_phase
        super
      end

    end
  end
end

OmniAuth.config.add_camelization 'academiaedu', 'AcademiaEdu'
