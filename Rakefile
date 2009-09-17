require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "jasmine_webos"
    gem.summary = %Q{Enables Jasmine Testing for WebOS Apps}
    gem.description = %Q{Enables Jasmine Testing for WebOS Apps}
    gem.email = "mr.gaffo@gmail.com"
    gem.homepage = "http://github.com/gaffo/jasmine_webos"
    gem.authors = ["Mike Gaffney"]
    gem.add_dependency "rubigen"
    gem.add_development_dependency "thoughtbot-shoulda"
    gem.add_development_dependency "cucumber"
    gem.files << FileList['lib/**/*.rb', 'bin/*'].to_a
    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: sudo gem install jeweler"
end

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/*_test.rb'
  test.verbose = true
end

task :test => :check_dependencies

begin
  require 'cucumber/rake/task'
  Cucumber::Rake::Task.new(:features)
  
  task :features => :check_dependencies
rescue LoadError
  task :features do
    abort "Cucumber is not available. In order to run features, you must: sudo gem install cucumber"
  end
end

task :default => :test

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  if File.exist?('VERSION')
    version = File.read('VERSION')
  else
    version = ""
  end
  
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "jasmine-webos #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end