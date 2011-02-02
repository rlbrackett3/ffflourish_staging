# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{mongoid-rspec}
  s.version = "1.3.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Evan Sagge"]
  s.date = %q{2010-11-10}
  s.description = %q{RSpec matches for Mongoid models, including association and validation matchers}
  s.email = %q{evansagge@gmail.com}
  s.extra_rdoc_files = ["LICENSE", "README.markdown"]
  s.files = [".bundle/config", ".document", ".rvmrc", "Gemfile", "Gemfile.lock", "LICENSE", "README.markdown", "Rakefile", "VERSION", "lib/matchers/associations.rb", "lib/matchers/document.rb", "lib/matchers/validations.rb", "lib/matchers/validations/associated.rb", "lib/matchers/validations/format_of.rb", "lib/matchers/validations/inclusion_of.rb", "lib/matchers/validations/length_of.rb", "lib/matchers/validations/numericality_of.rb", "lib/matchers/validations/presence_of.rb", "lib/matchers/validations/uniqueness_of.rb", "lib/mongoid-rspec.rb", "mongoid-rspec.gemspec", "spec/models/article.rb", "spec/models/comment.rb", "spec/models/profile.rb", "spec/models/site.rb", "spec/models/user.rb", "spec/spec_helper.rb", "spec/unit/associations_spec.rb", "spec/unit/document_spec.rb", "spec/unit/validations_spec.rb"]
  s.homepage = %q{http://github.com/evansagge/mongoid-rspec}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{RSpec matchers for Mongoid}
  s.test_files = ["spec/models/article.rb", "spec/models/comment.rb", "spec/models/profile.rb", "spec/models/site.rb", "spec/models/user.rb", "spec/spec_helper.rb", "spec/unit/associations_spec.rb", "spec/unit/document_spec.rb", "spec/unit/validations_spec.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<mongoid>, ["~> 2.0.0"])
      s.add_runtime_dependency(%q<rspec>, ["~> 2"])
    else
      s.add_dependency(%q<mongoid>, ["~> 2.0.0"])
      s.add_dependency(%q<rspec>, ["~> 2"])
    end
  else
    s.add_dependency(%q<mongoid>, ["~> 2.0.0"])
    s.add_dependency(%q<rspec>, ["~> 2"])
  end
end
