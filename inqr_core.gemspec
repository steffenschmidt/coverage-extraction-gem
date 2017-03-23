$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "inqr/core/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "inqr_core"
  s.version     = Inqr::Core::VERSION
  s.authors     = ["Author name"]
  s.email       = ["user@example.com"]
  s.homepage    = "https://www.example.com"
  s.summary     = "core gem"
  s.description = "Core features"
  s.license     = "Nonstandard"

  s.files = Dir["{app,config,db,lib}/**/*", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  # Token based authentication for Rails JSON APIs, https://github.com/lynndylanhurley/devise_token_auth
  s.add_dependency "devise_token_auth", "~> 0.1.39"

  s.add_development_dependency "sqlite3", "~> 1.3"
  s.add_development_dependency "rspec-rails", "~> 3.5"
  s.add_development_dependency "factory_girl_rails", "~> 4.7"
  s.add_development_dependency "database_cleaner", "~> 1.5"
  s.add_development_dependency "shoulda-matchers", "~> 3.1"
  # The instafailing RSpec progress bar formatter, https://github.com/thekompanee/fuubar
  s.add_development_dependency "fuubar", "~> 2.2"
  # Code coverage for Ruby, https://github.com/colszowka/simplecov
  s.add_development_dependency "simplecov", "~> 0.13"
end
