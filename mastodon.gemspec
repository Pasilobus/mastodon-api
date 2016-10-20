lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mastodon/version'

Gem::Specification.new do |spec|
  spec.name          = 'mastodon-api'
  spec.description   = 'A ruby interface to the Mastodon API'
  spec.homepage      = 'https://github.com/Gargron/mastodon-api'
  spec.email         = 'eugen@zeonfederated.com'
  spec.authors       = ['Eugen Rochko']
  spec.summary       = spec.description
  spec.licenses      = %w(MIT)
  spec.files         = %w(mastodon.gemspec) + Dir['lib/**/*.rb']
  spec.require_paths = %w(lib)
  spec.version       = Mastodon::Version

  spec.add_dependency 'http', '~> 2.0'
  spec.add_dependency 'addressable', '~> 2.4'

  spec.add_development_dependency 'bundler', '~> 1.0'
end
