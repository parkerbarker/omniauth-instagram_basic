# frozen_string_literal: true

require_relative "lib/omniauth/instagram_basic/version"

Gem::Specification.new do |spec|
  spec.name = "omniauth-instagram_basic"
  spec.version = Omniauth::InstagramBasic::VERSION
  spec.authors = ["Cameron Barker"]
  spec.email = ["barker.cameron@gmail.com"]

  spec.summary = "Instagram Basic Display API OAuth2 strategy for OmniAuth"
  spec.description = "Instagram Basic Display API OAuth2 strategy for OmniAuth. See: https://developers.facebook.com/docs/instagram-basic-display-api"
  spec.homepage = "https://www.parkerbarker.com"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/parkerbarker/omniauth-instagram_basic"
  spec.metadata["changelog_uri"] = "https://github.com/parkerbarker/omniauth-instagram_basic"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
  spec.add_dependency "omniauth"
  spec.add_dependency "omniauth-oauth2", "~> 1.0"
end
