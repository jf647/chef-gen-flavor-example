require 'chef_gen/flavor/example'

begin
  require 'hoe'
  Hoe.plugin :gemspec
  Hoe.plugins.delete :test
  Hoe.spec 'chef-gen-flavor-example' do |s|
    s.version = ChefGen::Flavor::Example::VERSION
    developer 'James FitzGibbon', 'james.i.fitzgibbon@jf647.com'
    license 'apache2'
    extra_deps << ['chef-gen-flavor-base', '~> 0.9']
    extra_dev_deps << ['chef-dk', '~> 0.5']
    extra_dev_deps << ['hoe', '~> 3.13']
    extra_dev_deps << ['hoe-gemspec', '~> 1.0']
    extra_dev_deps << ['rake', '~> 10.3']
    extra_dev_deps << ['rspec', '~> 3.1']
    extra_dev_deps << ['guard', '~> 2.12']
    extra_dev_deps << ['guard-rspec', '~> 4.2']
    extra_dev_deps << ['guard-rake', '~> 0.0']
    extra_dev_deps << ['guard-rubocop', '~> 1.2']
    extra_dev_deps << ['simplecov', '~> 0.9']
    extra_dev_deps << ['simplecov-console', '~> 0.2']
    extra_dev_deps << ['yard', '~> 0.8']
    extra_dev_deps << ['aruba', '~> 0.6.2']
    extra_dev_deps << ['rspec_junit_formatter', '~> 0.2']
  end
  # re-generate our gemspec before packaging
  task package: 'gem:spec'
rescue LoadError
  puts 'hoe not available; disabling tasks'
end

# Style Tests
begin
  require 'rubocop/rake_task'
  RuboCop::RakeTask.new do |t|
    t.formatters = ['progress']
    t.options = ['-D']
    t.patterns = %w(
      lib/**/*.rb
      spec/**/*.rb
      ./Rakefile
    )
  end
  desc 'Run Style Tests'
  task style: [:rubocop]
rescue LoadError
  puts 'rubocop not available; disabling tasks'
end

# Unit Tests
begin
  require 'rspec/core/rake_task'
  RSpec::Core::RakeTask.new

  # Coverage
  desc 'Generate unit test coverage report'
  task :coverage do
    ENV['COVERAGE'] = 'true'
    Rake::Task[:test].invoke
  end
rescue LoadError
  puts 'rspec not available; disabling tasks'
  # create a no-op task so that :default works
  task :test
end

# Feature Tests
begin
  require 'cucumber'
  require 'cucumber/rake/task'
  Cucumber::Rake::Task.new(:features)
rescue LoadError
  puts 'Cucumber/Aruba not available; disabling feature tasks'
  # create a no-op spec task for :default
  task :features
end

# Documentation
begin
  require 'yard'
  require 'yard/rake/yardoc_task'
  YARD::Rake::YardocTask.new(:doc) do |t|
    t.options = ['-m', 'markdown', '--private']
    t.stats_options = ['--list-undoc']
  end
rescue LoadError
  puts 'yard not available; disabling tasks'
end

# test is an alias for testing all the things
desc 'runs unit and feature tests'
task test: [:style, :spec, :features]

# default is to test everything
desc 'runs all tests'
task default: :test
