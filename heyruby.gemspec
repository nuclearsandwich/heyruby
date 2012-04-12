# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name        = "heyruby"
  s.version     = "0.1.0"
  s.authors     = ["Steven! Ragnarök"]
  s.email       = ["steven@nuclearsandwich.com"]
  s.homepage    = "https://nuclearsandwich.com/pheromone"
  s.summary     = "Encourage scientific hypothesizing and experimentation in IRB"
  s.description = <<-DESC
Hey Ruby‽ Good programmers are like scientists. When they want to answer a
question They form a hypothesis, then verify it with an experiment. Rubyists
have the experimentation phase down, but we tend not to hypothesize fully.
This gem helps people new to Ruby by prompting them for a hypothesis before
returning the result of their experiment.
  DESC

  s.files         = %w[lib/heyruby/console.rb lib/heyruby/version.rb lib/heyruby.rb]
  s.test_files    = %w[spec/console_spec.rb]
  s.executables   = %w[heyruby]
  s.require_paths = %w[lib]

  s.add_development_dependency "rake", "~> 0.9.2"
  s.add_development_dependency "minitest"
  s.add_development_dependency "mustache"
  s.add_development_dependency "bundler"
  s.add_development_dependency "aruba"
  s.add_runtime_dependency "pry"
	s.licenses = ['Apache-2.0']
end
