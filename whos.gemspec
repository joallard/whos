# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'whos/version'

Gem::Specification.new do |spec|
  spec.name          = "whos"
  spec.version       = Whos::VERSION
  spec.licenses      = ['GPL-3.0']
  spec.authors       = ["Jonathan Allard"]
  spec.email         = ["jonathan@allard.io"]

  spec.summary       = %q{Whos: as in whois, but shorter}
  spec.description   = %q{}
  spec.homepage      = "https://github.com/joallard/whos"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "whois",        "~> 4.0"
  spec.add_dependency "whois-parser", "~> 1.0"

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry", "~> 0.10"
  spec.add_development_dependency "pry-rescue", "~> 1.4"
  spec.add_development_dependency "pry-stack_explorer", "~> 0.4"
end
