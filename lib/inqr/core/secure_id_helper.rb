module Inqr::Core
  module SecureIdHelper
    extend ActiveSupport::Concern

    included do
      before_create :assign_secure_id
    end

  private

    def assign_secure_id
      self.secure_id = SecureRandom.hex(5) if self.has_attribute?(:secure_id) && secure_id.blank?
    end
  end
end
