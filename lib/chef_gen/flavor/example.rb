require 'chef_gen/flavor_base'
require 'chef_gen/snippets'

# chef generators
module ChefGen
  # a pluggable framework for distributing templates as ruby gems
  module Flavor
    # an example plugin for chef-gen-template
    class Example < FlavorBase
      include ChefGen::Snippet::CookbookBase
      include ChefGen::Snippet::Attributes
      include ChefGen::Snippet::Recipes
      include ChefGen::Snippet::ChefSpec
      include ChefGen::Snippet::TestKitchen
      include ChefGen::Snippet::StandardIgnore
      include ChefGen::Snippet::StyleRubocop
      include ChefGen::Snippet::GitInit
      include ChefGen::Snippet::ExampleFile
      include ChefGen::Snippet::ExampleTemplate

      # the version of the gem
      VERSION = '0.3.0'

      class << self
        # :nocov:
        def description
          'Example cookbook template'
        end
        # :nocov:
      end
    end
  end
end
