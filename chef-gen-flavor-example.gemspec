# -*- encoding: utf-8 -*-
# stub: chef-gen-flavor-example 0.6.1.20150910102445 ruby lib

Gem::Specification.new do |s|
  s.name = "chef-gen-flavor-example"
  s.version = "0.6.1.20150910102445"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["James FitzGibbon"]
  s.date = "2015-09-10"
  s.description = "An example plugin for [chef-gen-flavors](https://rubygems.org/gems/chef-gen-flavors).\n\nThis plugin makes use of all the snippets provided by\nchef-gen-flavor-base, is meant as a reference implementation than for\nactual use. It demonstrates how to create a flavor with tests and serves\nas a good example of how to get started writing your own flavors for\ndistribution.\n\nThere are two flavors in this gem:\n\n* example: includes all the snippets in their default form\n* example2: inherits from example but removes ExampleFile and ExampleTemplate from the list of snippets to use"
  s.email = ["james.i.fitzgibbon@jf647.com"]
  s.extra_rdoc_files = ["History.md", "Manifest.txt", "README.md"]
  s.files = ["History.md", "LICENSE", "Manifest.txt", "README.md", "chef-gen-flavor-example.gemspec", "lib/chef_gen/flavor/example.rb", "lib/chef_gen/flavor/example2.rb", "shared/flavor/example/metadata.rb", "shared/flavor/example/recipes/cookbook.rb", "shared/flavor/example2/metadata.rb", "shared/flavor/example2/recipes/cookbook.rb"]
  s.homepage = "https://github.com/jf647/chef-gen-flavor-example"
  s.licenses = ["apache2"]
  s.rdoc_options = ["--main", "README.md"]
  s.rubygems_version = "2.4.4"
  s.summary = "An example plugin for [chef-gen-flavors](https://rubygems.org/gems/chef-gen-flavors)"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<chef-gen-flavor-base>, ["~> 0.9"])
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
      s.add_development_dependency(%q<aruba>, ["~> 0.6.2"])
      s.add_development_dependency(%q<rspec_junit_formatter>, ["~> 0.2"])
    else
      s.add_dependency(%q<chef-gen-flavor-base>, ["~> 0.9"])
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
      s.add_dependency(%q<aruba>, ["~> 0.6.2"])
      s.add_dependency(%q<rspec_junit_formatter>, ["~> 0.2"])
    end
  else
    s.add_dependency(%q<chef-gen-flavor-base>, ["~> 0.9"])
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
    s.add_dependency(%q<aruba>, ["~> 0.6.2"])
    s.add_dependency(%q<rspec_junit_formatter>, ["~> 0.2"])
  end
end
