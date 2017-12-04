
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "mojautils/version"

Gem::Specification.new do |spec|
  spec.name          = "mojautils"
  spec.version       = Mojautils::VERSION
  spec.authors       = ["Akira Shinohara"]
  spec.email         = ["34061817+s10akir@users.noreply.github.com"]

  spec.summary       = %q{Command line utils.}
  spec.homepage      = "https://github.com/s10akir/mojautils"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_dependency "thor"
end
