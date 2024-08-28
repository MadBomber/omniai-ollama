# Omniai::Ollama

An alias of the OmniAI::OpenAI name-space.

Both LocalAI and Ollama use the same API as OpenAI so it is convient for the OmniAI platform to acknowledge these two providers with their own name-space while in reality using the existing framework for OmniAI::OpenAI

## WIP Status

The entire spec suite for OmniAI::OpenAI has been brought into the local working directory for this repo.  It has been modified to use the OmniAI::Ollama name-space.  There are errors and failures.  The majority of the failures are due to stubbed/mocked requests to the api.openai.com host.  The host for these mocked requests have been changed to localhost:11434 but that still is not enough to fix the failures.

The tests while failing have still provided value in that they pointed out many classes within the OmniAI::OpenAI name-space which were not aliased under the OmniAI::Ollama name-space.

