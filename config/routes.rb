Inqr::Core::Engine.routes.draw do
  mount_devise_token_auth_for "Inqr::User", at: "auth"

  get "users/me", to: "users#show", as: :user
end
