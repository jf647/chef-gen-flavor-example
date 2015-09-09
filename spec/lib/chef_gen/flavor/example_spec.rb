require 'chef_gen/flavor/example'

RSpec.describe ChefGen::Flavor::Example do
  include ChefDKGeneratorContext
  include DummyRecipe

  before do
    @orig_stdout = $stdout
    $stdout = File.open(File::NULL, 'w')
  end

  after do
    $stdout = @orig_stdout
  end

  %w(
    templates
    templates/default
    files
    files/default
    test
    test/integration
    test/integration/default
    test/integration/default/serverspec
    test/integration/default/serverspec/recipes
    spec
    spec/recipes
    attributes
    recipes
  ).each do |dirname|
    it "should create the directory #{dirname}" do
      expect(@recipe).to receive(:directory).with(/#{dirname}$/)
      flavor = ChefGen::Flavor::Example.new(type: 'cookbook', recipe: @recipe)
      flavor.declare_resources
    end
  end

  %w(
    .rspec
    Gemfile
    Berksfile
    Rakefile
    Guardfile
    .rubocop.yml
    .kitchen.yml
    test/integration/default/serverspec/spec_helper.rb
    test/integration/default/serverspec/recipes/default_spec.rb
    spec/spec_helper.rb
    spec/recipes/default_spec.rb
    recipes/default.rb
    attributes/default.rb
    metadata.rb
    README.md
    CHANGELOG.md
  ).each do |filename|
    it "should generate the file #{filename} from a template" do
      expect(@recipe).to receive(:template).with(/#{filename}$/)
      flavor = ChefGen::Flavor::Example.new(type: 'cookbook', recipe: @recipe)
      flavor.declare_resources
    end
  end

  %w(
    templates/default/example.conf.erb
    files/default/example.conf
  ).each do |filename|
    it "should write the file #{filename}" do
      expect(@recipe).to receive(:cookbook_file).with(/#{filename}$/)
      flavor = ChefGen::Flavor::Example.new(type: 'cookbook', recipe: @recipe)
      flavor.declare_resources
    end
  end

  it 'should write a chefignore and .gitignore' do
    expect(@recipe).to receive(:file).with(/chefignore$/)
    expect(@recipe).to receive(:file).with(/\.gitignore$/)
    flavor = ChefGen::Flavor::Example.new(type: 'cookbook', recipe: @recipe)
    flavor.declare_resources
  end

  it 'should display the actions taken' do
    expect(@recipe).to receive(:ruby_block).with('report_actions_taken')
    flavor = ChefGen::Flavor::Example.new(type: 'cookbook', recipe: @recipe)
    flavor.declare_resources
  end
end
