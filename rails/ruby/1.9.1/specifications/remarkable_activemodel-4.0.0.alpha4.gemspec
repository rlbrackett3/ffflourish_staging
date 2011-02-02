# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{remarkable_activemodel}
  s.version = "4.0.0.alpha4"

  s.required_rubygems_version = Gem::Requirement.new("> 1.3.1") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ho-Sheng Hsiao", "Carlos Brando", "José Valim", "Diego Carrion"]
  s.date = %q{2010-06-11}
  s.description = %q{Remarkable ActiveModel: collection of matchers and macros with I18n for ActiveModel}
  s.email = ["hosh@sparkfly.com", "eduardobrando@gmail.com", "jose.valim@gmail.com", "dc.rec1@gmail.com"]
  s.extra_rdoc_files = ["CHANGELOG", "LICENSE", "README"]
  s.files = ["CHANGELOG", "LICENSE", "README", "lib/remarkable/active_model.rb", "lib/remarkable/active_model/base.rb", "lib/remarkable/active_model/matchers/allow_values_for_matcher.rb", "lib/remarkable/active_model/matchers/validate_acceptance_of_matcher.rb", "lib/remarkable/active_model/matchers/validate_confirmation_of_matcher.rb", "lib/remarkable/active_model/matchers/validate_exclusion_of_matcher.rb", "lib/remarkable/active_model/matchers/validate_inclusion_of_matcher.rb", "lib/remarkable/active_model/matchers/validate_length_of_matcher.rb", "lib/remarkable/active_model/matchers/validate_numericality_of_matcher.rb", "lib/remarkable/active_model/matchers/validate_presence_of_matcher.rb", "locale/en.yml", "remarkable_activemodel.gemspec", "remarkable_activerecord.gemspec"]
  s.homepage = %q{http://github.com/carlosbrando/remarkable}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{remarkable}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Remarkable ActiveModel: collection of matchers and macros with I18n for ActiveModel}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rspec>, [">= 2.0.0.alpha11"])
      s.add_runtime_dependency(%q<remarkable>, ["~> 4.0.0.alpha4"])
    else
      s.add_dependency(%q<rspec>, [">= 2.0.0.alpha11"])
      s.add_dependency(%q<remarkable>, ["~> 4.0.0.alpha4"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 2.0.0.alpha11"])
    s.add_dependency(%q<remarkable>, ["~> 4.0.0.alpha4"])
  end
end
