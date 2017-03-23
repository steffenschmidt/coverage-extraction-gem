module Inqr
  class User < ApplicationRecord
    # Include default devise modules.
    devise :database_authenticatable, :registerable,
            :recoverable, :rememberable, :trackable, :validatable#, :confirmable

    include DeviseTokenAuth::Concerns::User

    validates :name, presence: true
  end
end
