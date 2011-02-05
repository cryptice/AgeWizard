# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{age_wizard}
  s.version = "0.9.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Erik Lindblad"]
  s.date = %q{2011-02-06}
  s.description = %q{An age calculation gem for Ruby and Rails applications.}
  s.email = %q{erik@l2c.se}
  s.extra_rdoc_files = ["CHANGELOG", "README.rdoc", "lib/age_wizard.rb"]
  s.files = ["CHANGELOG", "Manifest", "README.rdoc", "Rakefile", "lib/age_wizard.rb", "spec/age_wizard_spec.rb", "age_wizard.gemspec"]
  s.homepage = %q{http://github.com/cryptice/AgeWizard}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Age_wizard", "--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{age_wizard}
  s.rubygems_version = %q{1.4.2}
  s.summary = %q{An age calculation gem for Ruby and Rails applications.}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
