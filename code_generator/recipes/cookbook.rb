template = ChefDK::Template::Plugin::Example.new(self)
template.next_steps = <<END


Now cd into the generated cookbook directory and run
  'bundle' to install Ruby gems needed for local testing and
  'bundle exec rake -T' to see which testing tasks you can run.

  You are now ready to begin writing your first recipe.
END
template.generate
