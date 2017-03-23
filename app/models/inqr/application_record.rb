module Inqr
  class ApplicationRecord < ActiveRecord::Base
    include Inqr::Core::SecureIdHelper

    self.abstract_class = true
  end
end
