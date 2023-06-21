# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'smart_recruiters/version'

Gem::Specification.new do |spec|
  spec.name = "open_api_smart_recruiters_sdk"
  spec.version = SmartRecruiters::VERSION
  spec.authors = ["OneNeptune"]
  spec.email = ["5749451+OneNeptune@users.noreply.github.com"]

  spec.summary = "A SmartRecruiters API SDK for Ruby."
  spec.description = "A SmartRecruiters API SDK for Ruby."
  spec.homepage = "https://github.com/OneNeptune/smart_recruiters"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) || f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  spec.add_dependency "oauth2", "~> 2.0"
  spec.add_dependency "typhoeus", "~> 1.4"

  spec.add_development_dependency 'bundler', '>= 2.4.10'
  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop', '~> 1.21'

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
