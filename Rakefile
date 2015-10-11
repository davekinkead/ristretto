require "bundler/gem_tasks"

task :specs do
  $LOAD_PATH.unshift 'lib', 'specs'
  Dir.glob('specs/**/*_spec.rb').each { |spec| require_relative spec }
end