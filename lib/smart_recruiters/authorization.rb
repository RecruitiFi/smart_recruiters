require 'oauth2'

module SmartRecruiters
  class Authorization
    # The Configuration object holding settings to be used in the API client.
    attr_accessor :config

    attr_accessor :oauth_client

    # Initializes the Authorization
    # @option config [Configuration] Configuration for initializing the object, default to Configuration.default
    def initialize(config = Configuration.default)
      @config = config
      @oauth_client = OAuth2::Client.new(
                                          config.client_id,
                                          config.client_secret,
                                          authorize_url: 'https://www.smartrecruiters.com/identity/oauth/allow',
                                          token_url: 'https://api.smartrecruiters.com/identity/oauth/token',
                                          redirect_uri: config.redirect_uri,
                                          params: { client_id: config.client_id, client_secret: config.client_secret }
                                        )
    end

    def self.default
      @@default ||= Authorization.new
    end

    def build_authorize_url
      authorize_url = client.auth_code.authorize_url

      unless @config.scopes.length.zero?
        authorize_url += "&scope=" + @config.scopes.join("%20")
      end

      authorize_url
    end

    def get_token(code)
      oauth_client.auth_code.get_token(
        code,
        { client_id: config.client_id, client_secret: config.client_secret }
      )
    end

    def refresh_token
      token = OAuth2::AccessToken.from_hash(
        oauth_client,
        {
          "token_type": "Bearer",
          expires_at: config.token_expires_at,
          access_token: config.access_token,
          refresh_token: config.refresh_token
        }
      )

      token.refresh!({ client_id: config.client_id, client_secret: config.client_secret }) if token.expired?

      token
    end
  end
end
