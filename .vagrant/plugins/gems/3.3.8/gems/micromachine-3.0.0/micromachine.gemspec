# -*- encoding: utf-8 -*-
# stub: micromachine 3.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "micromachine".freeze
  s.version = "3.0.0".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Michel Martens".freeze]
  s.date = "2017-08-20"
  s.description = "There are many finite state machine implementations for Ruby, and they all provide a nice DSL for declaring events, exceptions, callbacks, and all kinds of niceties in general.\n\nBut if all you want is a finite state machine, look no further: this has less than 50 lines of code and provides everything a finite state machine must have, and nothing more.".freeze
  s.email = ["michel@soveran.com".freeze]
  s.homepage = "http://github.com/soveran/micromachine".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.6.11".freeze
  s.summary = "Minimal Finite State Machine.".freeze

  s.installed_by_version = "3.5.22".freeze

  s.specification_version = 4

  s.add_development_dependency(%q<cutest>.freeze, [">= 0".freeze])
end
