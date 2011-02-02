# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{taps}
  s.version = "0.3.14"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ricardo Chimal, Jr."]
  s.date = %q{2010-11-12}
  s.description = %q{A simple database agnostic import/export app to transfer data to/from a remote database.}
  s.email = %q{ricardo@heroku.com}
  s.executables = ["taps", "schema"]
  s.extra_rdoc_files = ["LICENSE", "README.rdoc", "TODO"]
  s.files = ["LICENSE", "README.rdoc", "Rakefile", "VERSION.yml", "bin/schema", "bin/schema.cmd", "bin/taps", "lib/taps/cli.rb", "lib/taps/config.rb", "lib/taps/data_stream.rb", "lib/taps/db_session.rb", "lib/taps/errors.rb", "lib/taps/log.rb", "lib/taps/monkey.rb", "lib/taps/multipart.rb", "lib/taps/operation.rb", "lib/taps/progress_bar.rb", "lib/taps/schema.rb", "lib/taps/server.rb", "lib/taps/utils.rb", "spec/base.rb", "spec/cli_spec.rb", "spec/data_stream_spec.rb", "spec/operation_spec.rb", "spec/server_spec.rb", "spec/utils_spec.rb", "TODO"]
  s.homepage = %q{http://github.com/ricardochimal/taps}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{taps}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{simple database import/export app}
  s.test_files = ["spec/base.rb", "spec/cli_spec.rb", "spec/data_stream_spec.rb", "spec/operation_spec.rb", "spec/server_spec.rb", "spec/utils_spec.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<json_pure>, [">= 1.2.0", "< 1.5.0"])
      s.add_runtime_dependency(%q<sinatra>, ["~> 1.0.0"])
      s.add_runtime_dependency(%q<rest-client>, [">= 1.4.0", "< 1.7.0"])
      s.add_runtime_dependency(%q<sequel>, ["~> 3.17.0"])
      s.add_runtime_dependency(%q<sqlite3-ruby>, ["~> 1.2"])
      s.add_runtime_dependency(%q<rack>, [">= 1.0.1"])
    else
      s.add_dependency(%q<json_pure>, [">= 1.2.0", "< 1.5.0"])
      s.add_dependency(%q<sinatra>, ["~> 1.0.0"])
      s.add_dependency(%q<rest-client>, [">= 1.4.0", "< 1.7.0"])
      s.add_dependency(%q<sequel>, ["~> 3.17.0"])
      s.add_dependency(%q<sqlite3-ruby>, ["~> 1.2"])
      s.add_dependency(%q<rack>, [">= 1.0.1"])
    end
  else
    s.add_dependency(%q<json_pure>, [">= 1.2.0", "< 1.5.0"])
    s.add_dependency(%q<sinatra>, ["~> 1.0.0"])
    s.add_dependency(%q<rest-client>, [">= 1.4.0", "< 1.7.0"])
    s.add_dependency(%q<sequel>, ["~> 3.17.0"])
    s.add_dependency(%q<sqlite3-ruby>, ["~> 1.2"])
    s.add_dependency(%q<rack>, [">= 1.0.1"])
  end
end
