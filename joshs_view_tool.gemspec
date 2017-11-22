
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "joshs_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "joshs_view_tool"
  spec.version       = JoshsViewTool::VERSION
  spec.authors       = ["Josh Beere"]
  spec.email         = ["officialkarpenoktum@gmail.com"]

  spec.summary       = %q{Various view helper tools for applications i create}
  spec.description   = %q{herpaderpenshmergen}
  spec.homepage      = "https://github.com/KarpeNoktum"


  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16.a"
  spec.add_development_dependency "rake", "~> 10.0"
end
