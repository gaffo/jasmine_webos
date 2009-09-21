require 'rubygems'
gem 'hoe', '>= 2.1.0'
require 'hoe'
require 'fileutils'
require './lib/jasminewebos'

Hoe.plugin :newgem
# Hoe.plugin :website
# Hoe.plugin :cucumberfeatures

# Generate all the Rake tasks
# Run 'rake -T' to see list of generated tasks (from gem root directory)
$hoe = Hoe.spec 'jasmine_webos' do
  self.developer 'Mike Gaffney', 'mr.gaffo@gmail.com'
  self.post_install_message = 'PostInstall.txt' # TODO remove if post-install message not required
  self.rubyforge_name       = self.name # TODO this is default value
  self.extra_deps         = [['thin','>= 1.2.4'], ['json', ">= 1.1.9"]]
end

require 'newgem/tasks'
Dir['tasks/**/*.rake'].each { |t| load t }
