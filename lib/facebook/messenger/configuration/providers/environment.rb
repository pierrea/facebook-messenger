module Facebook
  module Messenger
    class Configuration
      module Providers
        # Configuration provider for environment variables.
        class Environment
          def valid_verify_token?(verify_token)
            verify_token == Facebook::Messenger.config.verify_token
          end

          def app_secret_for(*)
            Facebook::Messenger.config.app_secret
          end

          def access_token_for(*)
            Facebook::Messenger.config.access_token
          end
        end
      end
    end
  end
end
