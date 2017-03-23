module Inqr
  FactoryGirl.define do
    factory :user, class: "Inqr/User" do
      sequence :email do |n|
        "test.user#{n}@example.com"
      end
      name "Test User"
      password "secret"
      password_confirmation "secret"
    end
  end
end
