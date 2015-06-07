Feature: chef generate

  Verifies that 'chef generate cookbook' works with a flavor
  that is derived from another flavor

  Scenario: verify cookbook contents
    Given a knife.rb that uses chef-gen-flavors
    And I set the environment variables to:
      | variable       | value    |
      |----------------|----------|
      | CHEFGEN_FLAVOR | example2 |
    When I generate a cookbook named "foo"
    Then the exit status should be 0
    And I cd to "foo"
    And the following files should exist:
      | Guardfile                                                   |
      | Rakefile                                                    |
      | .rubocop.yml                                                |
      | spec/recipes/default_spec.rb                                |
      | test/integration/default/serverspec/recipes/default_spec.rb |
    And the following files should not exist:
      | files/default/example.conf         |
      | templates/default/example.conf.erb |
    And the following directories should exist:
      | recipes    |
      | attributes |
    And the following directories should not exist:
      | files             |
      | files/default     |
      | templates         |
      | templates/default |
