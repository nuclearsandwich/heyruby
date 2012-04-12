#!/usr/bin/env rake
require "bundler/gem_tasks"
require "rake/testtask"
require "mustache"
require "./lib/heyruby/version"

task :build => :gemspec
desc "Compile gemspec from the mustache template."
task :gemspec do
  File.open "heyruby.gemspec", "w" do |gs|
    gs.puts Mustache.render File.read("heyruby.gemspec.mustache"),
      :version => %Q<"#{Heyruby::VERSION}">,
      :files => "%w[#{Dir["lib/**/*.rb"].join " "}]",
      :test_files => "%w[#{Dir["spec/**/*"].join " "}]",
      :bin_files => "[]"
  end
end

Rake::TestTask.new do |t|
  t.test_files = FileList["spec/**/*.rb"]
end

task :gs => :gemspec
task :default => :test
task :spec => :test

