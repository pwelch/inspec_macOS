require 'rubocop/rake_task'

# Style tests: Rubocop
namespace :lint do
  desc 'Run Ruby Rubocop lint checks'
  RuboCop::RakeTask.new(:ruby)
end

# InSpec commands
namespace :inspec do
  desc 'InSpec verify all checks'
  task :check do
    system 'inspec check profile/'
  end
end

task default: ['lint:ruby', 'inspec:check']
