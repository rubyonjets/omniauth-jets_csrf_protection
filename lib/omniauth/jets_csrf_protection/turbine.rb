require "omniauth"
require "omniauth/jets_csrf_protection/token_verifier"

module OmniAuth
  module JetsCsrfProtection
    class Turbine < Jets::Turbine
      initializer "omniauth-jets_csrf_protection.initialize" do
        OmniAuth.config.request_validation_phase = TokenVerifier.new
      end
    end
  end
end
