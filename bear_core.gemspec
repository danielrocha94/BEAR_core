# frozen_string_literal: true

require_relative "lib/bear_core/version"

Gem::Specification.new do |spec|
  spec.name = "bear_core"
  spec.version = BearCore::VERSION
  spec.authors = ["Daniel Rocha"]
  spec.email = ["danielrocha94@msn.com"]

  spec.summary = "Core gem for Back End Application Resources"
  spec.description = "This gem will be used as the base for future projects to be developed"
  spec.homepage = "Put your gem's website or public repo URL here."
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/danielrocha94/BEAR_core.git"
  spec.metadata["changelog_uri"] = "http://localhost"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
