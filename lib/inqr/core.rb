require "devise_token_auth"

module Inqr
  module Core
    def self.available?(engine_name)
      Object.const_defined?("Inqr::#{engine_name.to_s.camelize}")
    end
  end
end
