require 'chef_gen/flavor/example2'

RSpec.describe ChefGen::Flavor::Example2 do
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
  ).each do |dirname|
    it "should not create the directory #{dirname}" do
      expect(@recipe).not_to receive(:directory).with(/#{dirname}$/)
      flavor = ChefGen::Flavor::Example2.new(type: 'cookbook', recipe: @recipe)
      flavor.declare_resources
    end
  end

  %w(
    templates/default/example.conf.erb
    files/default/example.conf
  ).each do |filename|
    it "should not write the file #{filename}" do
      expect(@recipe).not_to receive(:cookbook_file).with(/#{filename}$/)
      flavor = ChefGen::Flavor::Example2.new(type: 'cookbook', recipe: @recipe)
      flavor.declare_resources
    end
  end
end
