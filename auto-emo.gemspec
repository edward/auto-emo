Gem::Specification.new do |s|
  s.name = %q{auto-emo}
  s.version = "1.0.0"

  s.specification_version = 2 if s.respond_to? :specification_version=

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Edward Ocampo-Gooding"]
  s.date = %q{2009-06-26}
  s.default_executable = %q{auto-emo}
  s.email = %q{edward@edwardog.net}
  s.executables = ["auto-emo"]
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "auto-emo.gemspec",
     "bin/auto-emo",
     "lib/auto-emo.rb",
     "lib/poems",
     "test/auto-emo_test.rb",
     "test/test_helper.rb"
  ]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/edward/auto-emo}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.0.1}
  s.summary = %q{Sometimes, you just need a whole lot of generated emo poetry}
  s.test_files = [
    "test/auto-emo_test.rb",
     "test/test_helper.rb"
  ]
end
