require 'chef_gen/flavor/example'

# chef generators
module ChefGen
  # a pluggable framework for distributing templates as ruby gems
  module Flavor
    # a flavor that inherits from ChefGen::Flavor::Example
    class Example2 < ChefGen::Flavor::Example
      NAME = 'example2'
      DESC = 'remove example files'
      VERSION = '0.6.0'

      def initialize(temp_path: nil, type: nil, recipe: nil)
        super
        # remove ExampleFile and ExampleTemplate snippets
        @snippets.reject! do |e|
          e == ChefGen::Snippet::ExampleFile || e == ChefGen::Snippet::ExampleTemplate
        end
      end

      do_add_content do
        @tocopy << [File.expand_path(File.join(static_content_path(__FILE__))) + '/.']
      end
    end
  end
end
