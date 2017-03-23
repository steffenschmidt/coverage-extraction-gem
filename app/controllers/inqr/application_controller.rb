module Inqr
  class ApplicationController < ActionController::Base
    protect_from_forgery with: :null_session

    include DeviseTokenAuth::Concerns::SetUserByToken

  protected

    def current_user
      current_inqr_user
    end
    helper_method :current_user

  end
end
