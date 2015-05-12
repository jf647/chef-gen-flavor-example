require 'chef-dk/template/plugin/example'

RSpec.describe ChefDK::Template::Plugin::Example do
  before do
    @ctx = double('ChefDK generator context')
    allow(@ctx).to receive(:cookbook_root).and_return('/nonexistent')
    allow(@ctx).to receive(:cookbook_name).and_return('foo')
    allow(ChefDK::Generator).to receive(:context).and_return(@ctx)
    @recipe = double('Chef recipe').as_null_object
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
      template = ChefDK::Template::Plugin::Example.new(@recipe)
      template.generate
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
      template = ChefDK::Template::Plugin::Example.new(@recipe)
      template.generate
    end
  end

  %w(
    templates/default/example.conf.erb
    files/default/example.conf
  ).each do |filename|
    it "should write the file #{filename}" do
      expect(@recipe).to receive(:cookbook_file).with(/#{filename}$/)
      template = ChefDK::Template::Plugin::Example.new(@recipe)
      template.generate
    end
  end

  it 'should write a chefignore and .gitignore' do
    expect(@recipe).to receive(:file).with(/chefignore$/)
    expect(@recipe).to receive(:file).with(/\.gitignore$/)
    template = ChefDK::Template::Plugin::Example.new(@recipe)
    template.generate
  end

  it 'should display the actions taken' do
    expect(@recipe).to receive(:ruby_block).with('report_actions_taken')
    template = ChefDK::Template::Plugin::Example.new(@recipe)
    template.generate
  end
end
