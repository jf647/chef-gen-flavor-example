# chef-gen-flavor-example

* home :: https://github.com/Nordstrom/chef-gen-flavor-example
* license :: [Apache2](http://www.apache.org/licenses/LICENSE-2.0)
* gem version :: [![Gem Version](https://badge.fury.io/rb/chef-gen-flavor-example.png)](http://badge.fury.io/rb/chef-gen-flavor-example)
* build status :: [![Build Status](https://travis-ci.org/Nordstrom/chef-gen-flavor-example.png?branch=master)](https://travis-ci.org/Nordstrom/chef-gen-flavor-example)
* code climate :: [![Code Climate](https://codeclimate.com/github/Nordstrom/chef-gen-flavor-example/badges/gpa.svg)](https://codeclimate.com/github/Nordstrom/chef-gen-flavor-example)
* docs :: [![Inline docs](http://inch-ci.org/github/nordstrom/chef-gen-flavor-example.svg?branch=master)](http://inch-ci.org/github/nordstrom/chef-gen-flavor-example)

## DESCRIPTION

An example plugin for [chef-gen-flavors](https://rubygems.org/gems/chef-gen-flavors).

This plugin makes use of most of the snippets available, and is meant as a
reference implementation than for actual use. It demonstrates how to create
a template plugin with tests and serve as a good example of how to get
started writing your own templates for distribution.

## USAGE

To see it in action:

    chef gem install chef-gen-flavor-example
    chef generate cookbook foo

This should generate the following cookbook:

```
$ chef generate cookbook foo
using ChefGen flavor in /home/james/.chefdk/gem/ruby/2.1.0/gems/chef-gen-flavor-example-0.1.0/code_generator
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

## AUTHOR

James FitzGibbon - james.i.fitzgibbon@nordstrom.com - Nordstrom Inc.

## LICENSE

Copyright 2015 Nordstrom, Inc.

Licensed under the Apache License, Version 2.0 (the "License"); you may not
use this file except in compliance with the License. You may obtain a copy
of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
License for the specific language governing permissions and limitations
under the License.
