# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{parallel}
  s.version = "0.5.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Michael Grosser"]
  s.date = %q{2010-11-05}
  s.email = %q{grosser.michael@gmail.com}
  s.files = [
    "Gemfile",
     "Gemfile.lock",
     "Rakefile",
     "Readme.md",
     "VERSION",
     "lib/parallel.rb",
     "parallel.gemspec",
     "spec/cases/closes_processes_at_runtime.rb",
     "spec/cases/each.rb",
     "spec/cases/each_with_index.rb",
     "spec/cases/map_with_index.rb",
     "spec/cases/map_with_index_empty.rb",
     "spec/cases/map_with_nested_arrays_and_nil.rb",
     "spec/cases/map_with_processes_and_exceptions.rb",
     "spec/cases/map_with_threads_and_exceptions.rb",
     "spec/cases/no_dump_with_each.rb",
     "spec/cases/parallel_high_fork_rate.rb",
     "spec/cases/parallel_influence_outside_data.rb",
     "spec/cases/parallel_map.rb",
     "spec/cases/parallel_map_range.rb",
     "spec/cases/parallel_map_sleeping.rb",
     "spec/cases/parallel_map_uneven.rb",
     "spec/cases/parallel_raise.rb",
     "spec/cases/parallel_sleeping_2.rb",
     "spec/cases/parallel_start_and_kill.rb",
     "spec/cases/parallel_with_detected_cpus.rb",
     "spec/cases/parallel_with_nil_uses_detected_cpus.rb",
     "spec/cases/parallel_with_set_processes.rb",
     "spec/parallel_spec.rb",
     "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/grosser/parallel}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Run any kind of code in parallel processes}
  s.test_files = [
    "spec/spec_helper.rb",
     "spec/parallel_spec.rb",
     "spec/cases/parallel_sleeping_2.rb",
     "spec/cases/map_with_processes_and_exceptions.rb",
     "spec/cases/no_dump_with_each.rb",
     "spec/cases/parallel_high_fork_rate.rb",
     "spec/cases/map_with_index.rb",
     "spec/cases/parallel_with_set_processes.rb",
     "spec/cases/parallel_map.rb",
     "spec/cases/map_with_threads_and_exceptions.rb",
     "spec/cases/parallel_influence_outside_data.rb",
     "spec/cases/parallel_start_and_kill.rb",
     "spec/cases/parallel_map_uneven.rb",
     "spec/cases/parallel_map_sleeping.rb",
     "spec/cases/parallel_with_detected_cpus.rb",
     "spec/cases/closes_processes_at_runtime.rb",
     "spec/cases/each.rb",
     "spec/cases/map_with_nested_arrays_and_nil.rb",
     "spec/cases/map_with_index_empty.rb",
     "spec/cases/parallel_raise.rb",
     "spec/cases/each_with_index.rb",
     "spec/cases/parallel_with_nil_uses_detected_cpus.rb",
     "spec/cases/parallel_map_range.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

