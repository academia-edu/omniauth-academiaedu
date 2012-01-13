require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class AcademiaEdu < OmniAuth::Strategies::OAuth2
            
      option :client_options, {
        :site => 'http://academia.ac:3000',
        :authorize_url => 'http://academia.ac:3000/oauth/authorize'
      }
      
      def request_phase
        super
      end
      
      uid { 'ryan1' }

      info do
        {
          :name => 'Ryan Lower',
          :email => 'ryan@academia.edu'
        }
      end

      extra do
        # { :raw_info => raw_info }
        { :raw_info => {:id => 114720} }
      end

      def raw_info
        @raw_info ||= access_token.get('/secret').parsed
      end
      
      def callback_phase
        super
      end
      
    end
  end
end

OmniAuth.config.add_camelization 'academiaedu', 'AcademiaEdu'
