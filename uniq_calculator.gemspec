# frozen_string_literal: true

require_relative "lib/uniq_calculator/version"

Gem::Specification.new do |spec|
  spec.name = "uniq-calculator"
  spec.version = UniqCalculator::VERSION
  spec.authors = ["chirag garg"]
  spec.email = ["chiraggargror@gmail.com"]

  spec.summary = "A simple Ruby calculator gem"
  spec.description = "This gem provides basic arithmetic operations such as addition, subtraction, multiplication, and division using a simple Ruby interface."
  spec.homepage = "https://github.com/chirag-garg-dev/uniq-calculator"
  spec.required_ruby_version = ">= 3.0.0"

 
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/chirag-garg-dev/uniq-calculator" # "TODO: Put your gem's public repo URL here."
  spec.metadata["changelog_uri"] = "https://github.com/chirag-garg-dev/uniq-calculator" # "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  gemspec = File.basename(__FILE__)

  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |file|
      file.end_with?(".gem") ||                # excludes any built .gem files
      file =~ %r{\A(bin|test|spec|features|\.git)/} ||  # excludes common dev folders
      file =~ /\A\.|Gemfile|appveyor|\.gemspec\z/       # excludes misc files
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
