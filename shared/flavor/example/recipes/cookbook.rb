f = ChefGen::Flavor::Example.new(
  type: 'cookbook', recipe: self
)

f.class.after_declare_resources do
  self.next_steps = <<END

Now cd into the generated cookbook directory and run
  'bundle' to install Ruby gems needed for local testing and
  'bundle exec rake -T' to see which testing tasks you can run.

  You are now ready to begin writing your first recipe.

END
end

f.declare_resources
