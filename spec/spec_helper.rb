require 'rspec/core/shared_context'

if ENV['COVERAGE']
  require 'simplecov'
  require 'simplecov-console'
  SimpleCov.formatters = [
    SimpleCov::Formatter::HTMLFormatter,
    SimpleCov::Formatter::Console
  ]
  SimpleCov.start
end

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.disable_monkey_patching!
  config.order = :random
  Kernel.srand config.seed
end

# a shared context that stubs a ChefDK Generator context
module ChefDKGeneratorContext
  extend RSpec::Core::SharedContext

  before do
    @ctx = double('ChefDK generator context')
    allow(@ctx).to receive(:cookbook_root).and_return('/nonexistent')
    allow(@ctx).to receive(:cookbook_name).and_return('foo')
    allow(@ctx).to receive(:have_git).and_return(true)
    allow(@ctx).to receive(:skip_git_init).and_return(false)
    allow(ChefDK::Generator).to receive(:context).and_return(@ctx)
  end
end

# a shared context that allows a recipe double to receive unknown methods
module DummyRecipe
  extend RSpec::Core::SharedContext

  before do
    @recipe = double('Chef recipe').as_null_object
  end
end
