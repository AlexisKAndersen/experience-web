require_relative 'environment'
require 'experience'
require 'experience/web'
DefaultPlatform.register Experience::Web::Platform
require 'experience/features'
require 'rake'
require 'cucumber'
require 'cucumber/rake/task'

Cucumber::Rake::Task.new(:acceptance, "Run features") do |t|
  t.profile = 'acceptance'
  t.cucumber_opts = "--color #{features_directory} features/support"
end