# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'experience/web/version'

Gem::Specification.new do |spec|
  spec.name          = "experience-web"
  spec.version       = Experience::Web::VERSION
  spec.authors       = ["Dane Andersen"]
  spec.email         = ["dane.andersen@gmail.com"]
  spec.summary       = %q{Test the user experience on the web}
  spec.description   = %q{Test web applications for the user experience. To be used with the experience gem.}
  spec.homepage      = "https://github.com/daneandersen/experience-web"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "watir-webdriver", "~> 0.6"
end
