# -*- encoding: utf-8 -*-
# stub: vagrant-disksize 0.1.3 ruby lib

Gem::Specification.new do |s|
  s.name = "vagrant-disksize".freeze
  s.version = "0.1.3".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "allowed_push_host" => "https://rubygems.org" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Simon Protheroe".freeze]
  s.bindir = "exe".freeze
  s.date = "2018-10-26"
  s.description = "Vagrant plugin to resize VirtualBox disks at creation time".freeze
  s.email = ["protheroe@gmail.com".freeze]
  s.homepage = "https://github.com/sprotheroe/vagrant-disksize".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.6.14.1".freeze
  s.summary = "Vagrant plugin to resize VirtualBox disks".freeze

  s.installed_by_version = "3.5.22".freeze

  s.specification_version = 4

  s.add_development_dependency(%q<bundler>.freeze, ["~> 1.13".freeze])
  s.add_development_dependency(%q<rake>.freeze, ["~> 10.0".freeze])
end
