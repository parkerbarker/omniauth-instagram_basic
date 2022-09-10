require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class InstagramBasic < OmniAuth::Strategies::OAuth2
      SITE_URL = 'https://api.instagram.com'.freeze
      TOKEN_PATH = 'oauth/access_token'.freeze
      TOKEN_OPTIONS = ["client_id", "client_secret"].freeze

      option :client_options, site: SITE_URL, token_url: TOKEN_PATH
      option :token_options, TOKEN_OPTIONS
      option :name, 'instagram_basic'

      uid { access_token.to_hash["user_id"] }
      extra { { raw_info: raw_info } }
      info { info_generator }
      credentials { credentials_generator }

      def callback_url
        options[:redirect_uri] || (full_host + script_name + callback_path)
      end

      # Instagram provides a short lived token initial with the option to request a long lived token
      # https://developers.facebook.com/docs/instagram-basic-display-api/guides/long-lived-access-tokens
      def raw_token_info
        url = "https://graph.instagram.com/access_token? \
                grant_type=ig_exchange_token \
                &client_secret=#{token_params["client_secret"]} \
                &access_token=#{access_token.token}"

        @raw_token_info ||= access_token.get(url).parsed || {}
      end

      # Get user info
      # https://developers.facebook.com/docs/instagram-basic-display-api/reference/me
      def raw_info
        url = "https://graph.instagram.com/me? \
                fields=id,account_type,media_count,username \
                &access_token=#{access_token.token}"
        
        @raw_info ||= access_token.get(url).parsed || {}
      end

       def info_generator
        {
          id: raw_info["id"],
          account_type: raw_info["account_type"],
          media_count: raw_info["media_count"],
          username: raw_info["username"]
        }
      end

      def credentials_generator
        {
          "token" => raw_token_info["access_token"],
          "short_lived_token" => access_token.token,
          "expires" => true,
          "expires_at" => raw_token_info["expires_in"]
        }
      end
    end
  end
end