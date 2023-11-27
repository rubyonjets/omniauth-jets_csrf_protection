# frozen_string_literal: true

require_relative "lib/omniauth/jets_csrf_protection/version"

Gem::Specification.new do |spec|
  spec.name = "omniauth-jets_csrf_protection"
  spec.version = Omniauth::JetsCsrfProtection::VERSION
  spec.authors = ["Tung Nguyen"]
  spec.email = ["tongueroo@gmail.com"]

  spec.summary = "Provides CSRF protection on OmniAuth request endpoint on Jets application."
  spec.homepage = "https://github.com/rubyonjets/omniauth-jets_csrf_protection"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "actionpack", ">= 4.2"
  spec.add_dependency "omniauth", "~> 2.0"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "jets"
  spec.add_development_dependency "rake"
end
