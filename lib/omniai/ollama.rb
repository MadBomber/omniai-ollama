# lib/omniai/ollama.rb
# frozen_string_literal: true


# require 'event_stream_parser'
require 'omniai'
require 'omniai/openai'

# require 'zeitwerk'

loader = Zeitwerk::Loader.for_gem
loader.push_dir(__dir__, namespace: OmniAI)
loader.inflector.inflect 'omniai' => 'OmniAI'
loader.inflector.inflect 'openai' => 'OpenAI'
loader.inflector.inflect 'ollama' => 'Ollama'
loader.setup

module OmniAI

  # Create an alias for OmniAI::OpenAI module
  module Ollama
    extend OmniAI::OpenAI

    VERSION = OmniAI::OpenAI::VERSION

    # Alias classes from OmniAI::OpenAI
    class Client < OmniAI::OpenAI::Client
      def initialize(**options)
        options[:host] = 'http://localhost:11434' unless options.has_key?(:host)
        super(**options)
      end
    end

    Assistants  = OmniAI::OpenAI::Assistants
    Assistant   = OmniAI::OpenAI::Assistant
    Chat        = OmniAI::OpenAI::Chat
    Config      = OmniAI::OpenAI::Config
    Embed       = OmniAI::OpenAI::Embed
    File        = OmniAI::OpenAI::File
    Files       = OmniAI::OpenAI::Files
    Speak       = OmniAI::OpenAI::Speak
    Threads     = OmniAI::OpenAI::Threads
    Tool        = OmniAI::OpenAI::Tool
    Transcribe  = OmniAI::OpenAI::Transcribe

    # Alias the Thread class and its nested classes
    class Thread < OmniAI::OpenAI::Thread
      Annotation  = OmniAI::OpenAI::Thread::Annotation
      Attachment  = OmniAI::OpenAI::Thread::Attachment
      Message     = OmniAI::OpenAI::Thread::Message
      Run         = OmniAI::OpenAI::Thread::Run
    end
  end
end
