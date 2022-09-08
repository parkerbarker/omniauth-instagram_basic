# frozen_string_literal: true

require_relative "lib/omniauth/instagram_basic/version"

Gem::Specification.new do |spec|
  spec.name = "omniauth-instagram_basic"
  spec.version = Omniauth::InstagramBasic::VERSION
  spec.authors = ["Cameron Barker"]
  spec.email = ["barker.cameron@gmail.com"]

  spec.summary = "CATS Write a short summary, because RubyGems requires one."
  spec.description = "CATS Write a longer description or delete this line."
  spec.homepage = "https://www.parkerbarker.com"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "CATS Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://parkerbarker.ngrok.io"
  spec.metadata["changelog_uri"] = "https://parkerbarker.ngrok.io"

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
