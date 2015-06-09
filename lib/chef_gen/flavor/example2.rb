require 'chef_gen/flavor/example'

# chef generators
module ChefGen
  # a pluggable framework for distributing templates as ruby gems
  module Flavor
    # a flavor that inherits from ChefGen::Flavor::Example
    class Example2 < Example
      # the version of the gem
      VERSION ||= '0.5.0'

      class << self
        # :nocov:
        def description
          'Example 2 cookbook template'
        end
        # :nocov:

        def code_generator_path(classfile)
          File.expand_path(
            File.join(
              classfile,
              '..', '..', '..', '..',
              'code_generator_2'
            )
          )
        end
      end

      # hook after run_snippets to remove examples files
      def after_run_snippets
        toremove = [
          'files',
          File.join('files', 'default'),
          File.join('files', 'default', 'example.conf'),
          'templates',
          File.join('templates', 'default'),
          File.join('templates', 'default', 'example.conf.erb')
        ]
        @directories.reject! { |e| toremove.include? e }
        @files_if_missing.reject! { |e| toremove.include? e }
      end
    end
  end
end
