#--Hooks for factory_girl--#
  require 'factory_girl'
  require 'factory_girl/step_definitions'
  Dir[File.expand_path(File.join(File.dirname(__FILE__),'..','..',
  'spec','factories','*.rb'))].each {|f| require f}
#--Hooks for fabrication--#
#  require 'fabrication'

