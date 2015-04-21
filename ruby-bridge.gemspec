# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rust/bridge/version'

Gem::Specification.new do |spec|
  spec.name          = "rust-bridge"
  spec.version       = Rust::Bridge::VERSION
  spec.authors       = ["Yehuda Katz"]
  spec.email         = ["wycats@gmail.com"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com' to prevent pushes to rubygems.org, or delete to allow pushes to any server."
  end

  spec.summary       = %q{A library for binding Ruby to Rust}
  spec.description   = %q{Simple data structures that can be passed between Ruby and Rust reliably}
  spec.homepage      = "https://github.com/wycats/rust-bridge"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
end
