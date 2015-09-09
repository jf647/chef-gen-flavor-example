# chef-gen-flavor-example

* home :: https://github.com/jf647/chef-gen-flavor-example
* license :: [Apache2](http://www.apache.org/licenses/LICENSE-2.0)
* gem version :: [![Gem Version](https://badge.fury.io/rb/chef-gen-flavor-example.png)](http://badge.fury.io/rb/chef-gen-flavor-example)
* build status :: [![Circle CI](https://circleci.com/gh/jf647/chef-gen-flavor-example.svg?style=svg)](https://circleci.com/gh/jf647/chef-gen-flavor-example)
* code climate :: [![Code Climate](https://codeclimate.com/github/jf647/chef-gen-flavor-example/badges/gpa.svg)](https://codeclimate.com/github/jf647/chef-gen-flavor-example)
* docs :: [![Inline docs](http://inch-ci.org/github/jf647/chef-gen-flavor-example.svg?branch=master)](http://inch-ci.org/github/jf647/chef-gen-flavor-example)

## DESCRIPTION

An example plugin for [chef-gen-flavors](https://rubygems.org/gems/chef-gen-flavors).

This plugin makes use of all the snippets provided by
chef-gen-flavor-base, is meant as a reference implementation than for
actual use. It demonstrates how to create a flavor with tests and serves
as a good example of how to get started writing your own flavors for
distribution.

There are two flavors in this gem:

* example: includes all the snippets in their default form
* example2: inherits from example but removes ExampleFile and ExampleTemplate from the list of snippets to use

# INSTALLATION

To install the latest public gem version:

    chef gem install chef-gen-flavor-example

To install from (possibly modified) source:

    bundle
    bundle exec rake package
    chef gem install pkg/chef-gen-flavor-example-X.Y.Z.gem

## USAGE

    chef generate cookbook foo

This should generate the following cookbook:

```
$ chef generate cookbook foo
using ChefGen flavor 'example'
Compiling Cookbooks...
Recipe: code_generator::cookbook
  * directory[/home/james/foo/] action create
    - create new directory /home/james/foo/
  * directory[/home/james/foo/templates] action create
    - create new directory /home/james/foo/templates
  * directory[/home/james/foo/templates/default] action create
    - create new directory /home/james/foo/templates/default

[...]

  * file[/home/james/foo/chefignore] action create
    - create new file /home/james/foo/chefignore
    - update content in file /home/james/foo/chefignore from none to ceda3a
    (diff output suppressed by config)
  * ruby_block[report_actions_taken] action run

actions taken:
  create directory /home/james/foo/
  create directory /home/james/foo/templates
  create directory /home/james/foo/templates/default
  create directory /home/james/foo/files
  create directory /home/james/foo/files/default
  create directory /home/james/foo/test
  create directory /home/james/foo/test/integration
  create directory /home/james/foo/test/integration/default
  create directory /home/james/foo/test/integration/default/serverspec
  create directory /home/james/foo/test/integration/default/serverspec/recipes
  create directory /home/james/foo/spec
  create directory /home/james/foo/spec/recipes
  create directory /home/james/foo/recipes
  create directory /home/james/foo/attributes
  create file /home/james/foo/templates/default/example.conf.erb
  create file /home/james/foo/files/default/example.conf
  create file /home/james/foo/.rspec
  create file /home/james/foo/Gemfile
  create file /home/james/foo/Berksfile
  create file /home/james/foo/Rakefile
  create file /home/james/foo/Guardfile
  create file /home/james/foo/.rubocop.yml
  create file /home/james/foo/.kitchen.yml
  create file /home/james/foo/test/integration/default/serverspec/spec_helper.rb
  create file /home/james/foo/test/integration/default/serverspec/recipes/default_spec.rb
  create file /home/james/foo/spec/spec_helper.rb
  create file /home/james/foo/spec/recipes/default_spec.rb
  create file /home/james/foo/recipes/default.rb
  create file /home/james/foo/attributes/default.rb
  create file /home/james/foo/metadata.rb
  create file /home/james/foo/README.md
  create file /home/james/foo/CHANGELOG.md
  create ignore file /home/james/foo/.gitignore
  create ignore file /home/james/foo/chefignore

    - execute the ruby block report_actions_taken
  * ruby_block[display_next_steps] action run

Now cd into the generated cookbook directory and run
  'bundle' to install Ruby gems needed for local testing and
  'bundle exec rake -T' to see which testing tasks you can run.

  You are now ready to begin writing your first recipe.

    - execute the ruby block display_next_steps
```

With the following directory structure:

```
foo
├── Berksfile
├── CHANGELOG.md
├── Gemfile
├── Guardfile
├── README.md
├── Rakefile
├── attributes
│   └── default.rb
├── chefignore
├── files
│   └── default
│       └── example.conf
├── metadata.rb
├── recipes
│   └── default.rb
├── spec
│   ├── recipes
│   │   └── default_spec.rb
│   └── spec_helper.rb
├── templates
│   └── default
│       └── example.conf.erb
└── test
    └── integration
        └── default
            └── serverspec
                ├── recipes
                │   └── default_spec.rb
                └── spec_helper.rb
```

## TESTING

To test, run one of:

    bundle exec rake style
    bundle exec rake spec
    bundle exec rake features

The feature tests are written using Aruba, which is a CLI driver for Cucumber.
It works off of the same feature files you may be used to using in Capybara for
web app testing (though the steps are perforce quite different).

The feature tests provide a good example of how to generate a cookbook of your
flavor and then test the generated artifact.  For example, the test suite that comes
with the example flavor tests that the Rake tasks can be listed, that the style and
unit tests run cleanly, and that the kitchen suites can be listed.

## AUTHOR

[James FitzGibbon](https://github.com/jf647)

## LICENSE

Copyright 2015 Nordstrom, Inc.

Copyright 2015 James FitzGibbon

Licensed under the Apache License, Version 2.0 (the "License"); you may not
use this file except in compliance with the License. You may obtain a copy
of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
License for the specific language governing permissions and limitations
under the License.
