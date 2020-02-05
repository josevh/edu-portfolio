# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "edu-portfolio"
  spec.version       = "0.1.0"
  spec.authors       = ["Jose Herrera"]
  spec.email         = ["josevictorherrera@gmail.com"]

  spec.summary       = "A purpose-built EDU portfolio theme for Jekyll."
  spec.homepage      = "https://github.com/josevh/edu-portfolio"
  spec.license       = "MIT"

  spec.metadata["plugin_type"] = "theme"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README)!i) }

  spec.add_runtime_dependency "jekyll", "~> 4.0"

  spec.add_development_dependency "bundler", "~> 2.1"
  spec.add_development_dependency "rake", "~> 12.0"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.1"
end
