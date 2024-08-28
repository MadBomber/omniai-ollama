# frozen_string_literal: true

require_relative "lib/omniai/ollama"

Gem::Specification.new do |spec|
  spec.name     = "omniai-ollama"
  spec.version  = OmniAI::Ollama::VERSION
  spec.authors  = ["Dewayne VanHoozer"]
  spec.email    = ["dvanhoozer@gmail.com"]

  spec.summary      = "Implements an Ollama namespace clone of OmniAI::OpenAI"
  spec.description  = "Provides OmniAI client access to a local Ollama server."
  spec.homepage     = "https://github.com/MadBomber/omniai-ollama"
  spec.license      = "MIT"
  spec.required_ruby_version = ">= 3.3.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"]     = spec.homepage
  spec.metadata["source_code_uri"]  = spec.homepage
  spec.metadata["changelog_uri"]    = spec.homepage

  spec.files = Dir.glob('{lib}/**/*') + %w[README.md Gemfile]

  spec.require_paths  = ['lib']

  spec.add_dependency 'omniai-openai'
end
