# -*- encoding: utf-8 -*-
# stub: rails_admin_rollincode 1.2.1 ruby lib

Gem::Specification.new do |s|
  s.name = "rails_admin_rollincode"
  s.version = "1.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["KOVACS Nicolas", "VIDEAUD Matthieu"]
  s.date = "2017-01-25"
  s.description = "Rails_Admin FLAT theme overhaul"
  s.email = ["pro.nicovak@gmail.com"]
  s.homepage = "https://github.com/rollincode/rails_admin_theme"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.2"
  s.summary = "Rails_Admin FLAT theme overhaul"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, ["< 6", ">= 4.0"])
    else
      s.add_dependency(%q<rails>, ["< 6", ">= 4.0"])
    end
  else
    s.add_dependency(%q<rails>, ["< 6", ">= 4.0"])
  end
end
