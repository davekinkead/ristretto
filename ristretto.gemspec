# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ristretto/version'

Gem::Specification.new do |spec|
  spec.name          = "ristretto"
  spec.version       = Ristretto::VERSION
  spec.authors       = ["Dave Kinkead"]
  spec.email         = ["dave@kinkead.com.au"]
  spec.summary       = %q{Literate Ruby inspired by Coffeescript}
  spec.description   = %q{Literate Ruby inspired by Coffeescript. Execute your blog posts or documentation.}
  spec.homepage      = "https://github.com/davekinkead/ristretto"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|specs|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
