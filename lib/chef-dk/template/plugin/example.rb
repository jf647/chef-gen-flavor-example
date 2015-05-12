require 'chef-dk/template/plugin_base'
require 'chef-dk/template/mixins'

# the Chef Development Kit
module ChefDK
  # templates for 'chef generate'
  module Template
    # a pluggable framework for distributing templates as ruby gems
    class Plugin
      # an example plugin for chef-dk-template-plugin
      class Example < PluginBase
        include ChefDK::Template::Mixin::CookbookBase
        include ChefDK::Template::Mixin::Attributes
        include ChefDK::Template::Mixin::Recipes
        include ChefDK::Template::Mixin::ChefSpec
        include ChefDK::Template::Mixin::TestKitchen
        include ChefDK::Template::Mixin::StandardIgnore
        include ChefDK::Template::Mixin::StyleRubocop
        include ChefDK::Template::Mixin::ExampleFile
        include ChefDK::Template::Mixin::ExampleTemplate

        # the version of the gem
        VERSION = '0.1.0'

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
end
