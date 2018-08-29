Gem::Specification.new do |spec|
  spec.name = "auto_organize"
  spec.version = "0.0.1"
  spec.platform = Gem::Platform::RUBY
  spec.authors = ["Devyn Cairns"]
  spec.email = ["devyn.cairns@gmail.com"]
  spec.homepage = "https://github.com/devyn/auto_organize"
  spec.summary = "Automatically link files from one directory to another based on pattern rules"
  spec.license = "BSD-3-Clause"

  spec.add_dependency "listen", "~> 3.1"

  #spec.files = Dir.glob("lib/**/*", File::FNM_DOTMATCH)
  spec.extra_rdoc_files = Dir["README*", "LICENSE*"]
  spec.executables << "auto_organize"
  #spec.require_paths = ["lib"]
end
