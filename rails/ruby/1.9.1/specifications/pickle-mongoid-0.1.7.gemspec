# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{pickle-mongoid}
  s.version = "0.1.7"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Marcin Ciunelis"]
  s.date = %q{2010-11-02}
  s.email = %q{marcin.ciunelis@gmail.com}
  s.extra_rdoc_files = ["LICENSE", "README.rdoc"]
  s.files = [".document", ".gitignore", "Gemfile", "Gemfile.lock", "LICENSE", "README.rdoc", "Rakefile", "VERSION", "lib/pickle-mongoid.rb", "lib/pickle/adapters/mongoid.rb", "pickle-mongoid.gemspec", "spec/pickle-mongoid_spec.rb", "spec/spec.opts", "spec/spec_helper.rb"]
  s.homepage = %q{http://github.com/martinciu/pickle-mongoid}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{ianwhite's pickle mongoid adapter}
  s.test_files = ["spec/pickle-mongoid_spec.rb", "spec/spec_helper.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<mongoid>, [">= 2.0.0.beta.20"])
      s.add_runtime_dependency(%q<pickle>, [">= 0.3.0"])
      s.add_development_dependency(%q<rspec>, ["~> 1.3.0"])
      s.add_development_dependency(%q<bundler>, [">= 0"])
    else
      s.add_dependency(%q<mongoid>, [">= 2.0.0.beta.20"])
      s.add_dependency(%q<pickle>, [">= 0.3.0"])
      s.add_dependency(%q<rspec>, ["~> 1.3.0"])
      s.add_dependency(%q<bundler>, [">= 0"])
    end
  else
    s.add_dependency(%q<mongoid>, [">= 2.0.0.beta.20"])
    s.add_dependency(%q<pickle>, [">= 0.3.0"])
    s.add_dependency(%q<rspec>, ["~> 1.3.0"])
    s.add_dependency(%q<bundler>, [">= 0"])
  end
end
