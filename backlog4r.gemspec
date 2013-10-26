# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'backlog4r/version'

Gem::Specification.new do |spec|
  spec.name          = "backlog4r"
  spec.version       = Backlog4r::VERSION
  spec.authors       = ["Keisuke Futonaka"]
  spec.email         = ["futonaka@gmail.com"]
  spec.description   = %q{WebAPI interface for backlog.jp}
  spec.summary       = %q{WebAPI interface for backlog.jp}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "activesupport"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "webmock"
end
