require 'chef_gen/flavor_base'
require 'chef_gen/snippets'

# chef generators
module ChefGen
  # a pluggable framework for distributing templates as ruby gems
  module Flavor
    # an example plugin for chef-gen-template
    class Example < ChefGen::FlavorBase
      NAME = 'example'
      DESC = 'include ALL the snippets'
      VERSION = '0.6.1'

      def initialize(temp_path: nil, type: nil, recipe: nil)
        super
        @snippets << ChefGen::Snippet::CookbookBase
        @snippets << ChefGen::Snippet::ActionsTaken
        @snippets << ChefGen::Snippet::Attributes
        @snippets << ChefGen::Snippet::ChefSpec
        @snippets << ChefGen::Snippet::Debugging
        @snippets << ChefGen::Snippet::ExampleFile
        @snippets << ChefGen::Snippet::ExampleTemplate
        @snippets << ChefGen::Snippet::Guard
        @snippets << ChefGen::Snippet::GitInit
        @snippets << ChefGen::Snippet::NextSteps
        @snippets << ChefGen::Snippet::NoClobber
        @snippets << ChefGen::Snippet::Recipes
        @snippets << ChefGen::Snippet::ResourceProvider
        @snippets << ChefGen::Snippet::StandardIgnore
        @snippets << ChefGen::Snippet::StyleFoodcritic
        @snippets << ChefGen::Snippet::StyleRubocop
        @snippets << ChefGen::Snippet::StyleTailor
        @snippets << ChefGen::Snippet::TestKitchen
      end

      do_add_content do
        @tocopy << [File.expand_path(File.join(static_content_path(__FILE__, 'example'))) + '/.']
      end
    end
  end
end
