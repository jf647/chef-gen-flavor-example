Feature: chef generate

  Verifies that 'chef generate cookbook' works when the generator
  path is dynamically chosen by chef-gen-flavors

  Scenario: verify cookbook contents
    Given a knife.rb that uses chef-gen-flavors
    And I set the environment variables to:
      | variable       | value   |
      |----------------|---------|
      | CHEFGEN_FLAVOR | example |
    When I generate a cookbook named "foo"
    Then the exit status should be 0
    And I cd to "foo"
    And the following files should exist:
      | Guardfile                                                   |
      | Rakefile                                                    |
      | .rubocop.yml                                                |
      | spec/recipes/default_spec.rb                                |
      | test/integration/default/serverspec/recipes/default_spec.rb |
    And the following directories should exist:
      | recipes    |
      | attributes |
    And the file "README.md" should match /^# foo$/
    And the file "README.md" should match /^Add 'recipe\[foo::default\]' to your node's run-list./

  Scenario: verify that the rake tasks are available after generation
    Given a knife.rb that uses chef-gen-flavors
    And I set the environment variables to:
      | variable       | value   |
      |----------------|---------|
      | CHEFGEN_FLAVOR | example |
    When I generate a cookbook named "foo"
    And I cd to "foo"
    And I bundle gems
    And I list the rake tasks
    Then the exit status should be 0
    And the output should match each of:
      | ^rake foodcritic |
      | ^rake rubocop |
      | ^rake spec |
      | ^rake kitchen:all |
      | ^rake style |

    Scenario: verify that the cookbook passes style checks after generation
    Given a knife.rb that uses chef-gen-flavors
    And I set the environment variables to:
      | variable       | value   |
      |----------------|---------|
      | CHEFGEN_FLAVOR | example |
    When I generate a cookbook named "foo"
    And I cd to "foo"
    And I bundle gems
    And I run a style test
    Then the exit status should be 0
    And the output should match /no offenses detected$/

  Scenario: verify that the cookbook passes unit tests after generation
    Given a knife.rb that uses chef-gen-flavors
    And I set the environment variables to:
      | variable       | value   |
      |----------------|---------|
      | CHEFGEN_FLAVOR | example |
    When I generate a cookbook named "foo"
    And I cd to "foo"
    And I bundle gems
    And I run a unit test
    Then the exit status should be 0
    And the output should match /0 failures$/

Scenario: verify that the kitchen suites can be listed
  Given a knife.rb that uses chef-gen-flavors
  And I set the environment variables to:
    | variable       | value   |
    |----------------|---------|
    | CHEFGEN_FLAVOR | example |
  When I generate a cookbook named "foo"
  And I cd to "foo"
  And I bundle gems
  And I list the kitchen suites
  Then the exit status should be 0
  And the output should match each of:
    | ^default-ubuntu-1404 |
    | ^default-centos-66   |
