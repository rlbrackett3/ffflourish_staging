# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{fuubar-cucumber}
  s.version = "0.0.9"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Marcin Ciunelis"]
  s.date = %q{2010-12-14}
  s.description = %q{the instafailing Cucumber progress bar formatter}
  s.email = %q{marcin.ciunelis@gmail.com}
  s.extra_rdoc_files = ["LICENSE.txt", "README.textile"]
  s.files = [".document", ".rspec", "Gemfile", "Gemfile.lock", "LICENSE.txt", "README.textile", "Rakefile", "VERSION", "fuubar-cucumber.gemspec", "lib/fuubar-cucumber.rb", "spec/fuubar-cucumber_spec.rb", "spec/spec_helper.rb"]
  s.homepage = %q{http://github.com/martinciu/fuubar-cucumber}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{the instafailing Cucumber progress bar formatter}
  s.test_files = ["spec/fuubar-cucumber_spec.rb", "spec/spec_helper.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<cucumber>, [">= 0"])
      s.add_runtime_dependency(%q<ruby-progressbar>, ["~> 0.0.9"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<bundler>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.5.1"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
    else
      s.add_dependency(%q<cucumber>, [">= 0"])
      s.add_dependency(%q<ruby-progressbar>, ["~> 0.0.9"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<bundler>, [">= 0"])
      s.add_dependency(%q<jeweler>, ["~> 1.5.1"])
      s.add_dependency(%q<rcov>, [">= 0"])
    end
  else
    s.add_dependency(%q<cucumber>, [">= 0"])
    s.add_dependency(%q<ruby-progressbar>, ["~> 0.0.9"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<bundler>, [">= 0"])
    s.add_dependency(%q<jeweler>, ["~> 1.5.1"])
    s.add_dependency(%q<rcov>, [">= 0"])
  end
end
