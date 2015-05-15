Feature: chef generate

  Verifies that 'chef generate cookbook' works when the generator
  path is dynamically chosen by chef-gen-flavors

  Scenario: generate cookbook
    Given a knife.rb that uses chef-gen-flavors
    And I set the environment variables to:
      | variable       | value   |
      |----------------|----------------------------------|
      | CHEFGEN_FLAVOR | example |
    When I generate a cookbook named 'foo'
    Then the exit status should be 0
    And the output should match:
      """
      using ChefGen flavor 'example'
      """
    And the output should match:
      """
      - create new directory .+\/templates
      """
    And the output should match:
      """
      - create new directory .+\/files
      """
    And the output should match:
      """
      - create new file .+\/Rakefile
      """
    And the following files should exist:
      | foo/Guardfile                                                   |
      | foo/.rubocop.yml                                                |
      | foo/spec/recipes/default_spec.rb                                |
      | foo/test/integration/default/serverspec/recipes/default_spec.rb |
    And the file "foo/README.md" should match /Add 'recipe\[foo::default\]' to your node's run-list./
