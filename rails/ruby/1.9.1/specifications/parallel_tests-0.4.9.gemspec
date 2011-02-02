# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{parallel_tests}
  s.version = "0.4.9"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Michael Grosser"]
  s.date = %q{2010-11-30}
  s.email = %q{grosser.michael@gmail.com}
  s.executables = ["parallel_spec", "parallel_cucumber", "parallel_test"]
  s.files = [".gitignore", "Gemfile", "Gemfile.lock", "Rakefile", "Readme.md", "VERSION", "bin/parallel_cucumber", "bin/parallel_spec", "bin/parallel_test", "lib/parallel_cucumber.rb", "lib/parallel_specs.rb", "lib/parallel_specs/spec_runtime_logger.rb", "lib/parallel_tests.rb", "lib/parallel_tests/grouper.rb", "lib/parallel_tests/railtie.rb", "lib/parallel_tests/tasks.rb", "lib/tasks/parallel_tests.rake", "parallel_tests.gemspec", "spec/integration_spec.rb", "spec/parallel_cucumber_spec.rb", "spec/parallel_specs_spec.rb", "spec/parallel_tests_spec.rb", "spec/spec_helper.rb"]
  s.homepage = %q{http://github.com/grosser/parallel_tests}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Run tests / specs / features in parallel}
  s.test_files = ["spec/parallel_cucumber_spec.rb", "spec/integration_spec.rb", "spec/parallel_specs_spec.rb", "spec/parallel_tests_spec.rb", "spec/spec_helper.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<parallel>, [">= 0"])
    else
      s.add_dependency(%q<parallel>, [">= 0"])
    end
  else
    s.add_dependency(%q<parallel>, [">= 0"])
  end
end
