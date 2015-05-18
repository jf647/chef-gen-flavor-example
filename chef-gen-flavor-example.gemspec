# -*- encoding: utf-8 -*-
# stub: chef-gen-flavor-example 0.3.1.20150518085406 ruby lib

Gem::Specification.new do |s|
  s.name = "chef-gen-flavor-example"
  s.version = "0.3.1.20150518085406"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["James FitzGibbon"]
  s.date = "2015-05-18"
  s.description = "An example plugin for [chef-gen-flavors](https://rubygems.org/gems/chef-gen-flavors).\n\nThis plugin makes use of most of the snippets available, and is meant as a\nreference implementation than for actual use. It demonstrates how to create\na flavor with tests and serves as a good example of how to get\nstarted writing your own flavors for distribution."
  s.email = ["james.i.fitzgibbon@nordstrom.com"]
  s.extra_rdoc_files = ["History.md", "Manifest.txt", "README.md"]
  s.files = [".rspec", ".rubocop.yml", ".travis.yml", "Gemfile", "Gemfile.lock", "Guardfile", "History.md", "LICENSE", "Manifest.txt", "README.md", "Rakefile", "chef-gen-flavor-example.gemspec", "code_generator/files/default/files_default_example_conf", "code_generator/files/default/templates_default_example_conf_erb", "code_generator/libraries/kitchen_helper.rb", "code_generator/metadata.rb", "code_generator/recipes/cookbook.rb", "code_generator/templates/default/Berksfile.erb", "code_generator/templates/default/CHANGELOG_md.erb", "code_generator/templates/default/Gemfile.erb", "code_generator/templates/default/Guardfile.erb", "code_generator/templates/default/README_md.erb", "code_generator/templates/default/Rakefile.erb", "code_generator/templates/default/_kitchen_yml.erb", "code_generator/templates/default/_rspec.erb", "code_generator/templates/default/_rubocop_yml.erb", "code_generator/templates/default/attributes_default_rb.erb", "code_generator/templates/default/metadata_rb.erb", "code_generator/templates/default/recipes_default_rb.erb", "code_generator/templates/default/spec_recipes_default_spec_rb.erb", "code_generator/templates/default/spec_spec_helper_rb.erb", "code_generator/templates/default/test_integration_default_serverspec_recipes_default_spec_rb.erb", "code_generator/templates/default/test_integration_default_serverspec_spec_helper_rb.erb", "lib/chef_gen/flavor/example.rb", "spec/lib/chef_gen/flavor/example_spec.rb", "spec/spec_helper.rb"]
  s.homepage = "https://github.com/Nordstrom/chef-gen-flavor-example"
  s.licenses = ["apache2"]
  s.rdoc_options = ["--main", "README.md"]
  s.rubygems_version = "2.4.4"
  s.summary = "An example plugin for [chef-gen-flavors](https://rubygems.org/gems/chef-gen-flavors)"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<chef-gen-flavors>, ["~> 0.5"])
      s.add_development_dependency(%q<rdoc>, ["~> 4.0"])
      s.add_development_dependency(%q<chef-dk>, ["~> 0.5"])
      s.add_development_dependency(%q<hoe>, ["~> 3.13"])
      s.add_development_dependency(%q<hoe-gemspec>, ["~> 1.0"])
      s.add_development_dependency(%q<rake>, ["~> 10.3"])
      s.add_development_dependency(%q<rspec>, ["~> 3.1"])
      s.add_development_dependency(%q<guard>, ["~> 2.12"])
      s.add_development_dependency(%q<guard-rspec>, ["~> 4.2"])
      s.add_development_dependency(%q<guard-rake>, ["~> 0.0"])
      s.add_development_dependency(%q<guard-rubocop>, ["~> 1.2"])
      s.add_development_dependency(%q<simplecov>, ["~> 0.9"])
      s.add_development_dependency(%q<simplecov-console>, ["~> 0.2"])
      s.add_development_dependency(%q<yard>, ["~> 0.8"])
      s.add_development_dependency(%q<aruba>, ["~> 0.6"])
    else
      s.add_dependency(%q<chef-gen-flavors>, ["~> 0.5"])
      s.add_dependency(%q<rdoc>, ["~> 4.0"])
      s.add_dependency(%q<chef-dk>, ["~> 0.5"])
      s.add_dependency(%q<hoe>, ["~> 3.13"])
      s.add_dependency(%q<hoe-gemspec>, ["~> 1.0"])
      s.add_dependency(%q<rake>, ["~> 10.3"])
      s.add_dependency(%q<rspec>, ["~> 3.1"])
      s.add_dependency(%q<guard>, ["~> 2.12"])
      s.add_dependency(%q<guard-rspec>, ["~> 4.2"])
      s.add_dependency(%q<guard-rake>, ["~> 0.0"])
      s.add_dependency(%q<guard-rubocop>, ["~> 1.2"])
      s.add_dependency(%q<simplecov>, ["~> 0.9"])
      s.add_dependency(%q<simplecov-console>, ["~> 0.2"])
      s.add_dependency(%q<yard>, ["~> 0.8"])
      s.add_dependency(%q<aruba>, ["~> 0.6"])
    end
  else
    s.add_dependency(%q<chef-gen-flavors>, ["~> 0.5"])
    s.add_dependency(%q<rdoc>, ["~> 4.0"])
    s.add_dependency(%q<chef-dk>, ["~> 0.5"])
    s.add_dependency(%q<hoe>, ["~> 3.13"])
    s.add_dependency(%q<hoe-gemspec>, ["~> 1.0"])
    s.add_dependency(%q<rake>, ["~> 10.3"])
    s.add_dependency(%q<rspec>, ["~> 3.1"])
    s.add_dependency(%q<guard>, ["~> 2.12"])
    s.add_dependency(%q<guard-rspec>, ["~> 4.2"])
    s.add_dependency(%q<guard-rake>, ["~> 0.0"])
    s.add_dependency(%q<guard-rubocop>, ["~> 1.2"])
    s.add_dependency(%q<simplecov>, ["~> 0.9"])
    s.add_dependency(%q<simplecov-console>, ["~> 0.2"])
    s.add_dependency(%q<yard>, ["~> 0.8"])
    s.add_dependency(%q<aruba>, ["~> 0.6"])
  end
end
