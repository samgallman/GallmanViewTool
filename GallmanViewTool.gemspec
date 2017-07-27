# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'GallmanViewTool/version'

Gem::Specification.new do |spec|
  spec.name          = "GallmanViewTool"
  spec.version       = GallmanViewTool::VERSION
  spec.authors       = ["Sam Gallman"]
  spec.email         = ["samgangallman@gmail.com"]

  spec.summary       = %q{various view specific methods for applications I use}
  spec.description   = %q{provides generated HTML data for Rails Application}
  spec.homepage      = "https://devcamp.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
end
