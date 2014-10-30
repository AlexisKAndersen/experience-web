require_relative 'environment'
require 'rubygems'
require 'bundler'
require 'rake'
require 'rspec/core/rake_task'
require 'cucumber'
require 'cucumber/rake/task'

require 'experience'
require 'experience/web'
DefaultPlatform.register Experience::Web::Platform
require 'experience/features'

Bundler::GemHelper.install_tasks

Cucumber::Rake::Task.new(:acceptance, "Run features") do |t|
  t.profile = 'acceptance'
  t.cucumber_opts = "--color #{features_directory} features/support"
end