# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'img_smpl/version'

Gem::Specification.new do |spec|
  spec.name          = "img_smpl"
  spec.version       = ImgSmpl::VERSION
  spec.authors       = ["takeo.takashima"]
  spec.email         = ["tkot.bom@gmail.com"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com' to prevent pushes to rubygems.org, or delete to allow pushes to any server."
  end

  spec.summary       = %q{create the sample image files.}
  spec.description   = %q{create the sample image files.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.2"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.executables << 'img_smpl'
  spec.add_dependency 'rmagick'
  spec.add_dependency 'trollop'
end
