
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "pdf_kitchen/version"

Gem::Specification.new do |spec|
  spec.name          = "pdf_kitchen"
  spec.version       = PdfKitchen::VERSION
  spec.license       = "MIT"
  spec.version       = "0.3.4"
  spec.authors       = ["tanaka"]
  spec.email         = ["tanaka@lilli.co.jp"]

  spec.summary       = %q{Ruby client library for the PdfKitchen Platform.}
  spec.description   = %q{PdfKitchen API client: Ruby client library for the PdfKitchen Platform.}
  spec.homepage      = "https://github.com/tanaka3622/pdf_kitchen.git"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
end
