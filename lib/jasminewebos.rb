$:.unshift(File.dirname(__FILE__)) unless
$:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

module Jasminewebos
  VERSION = '0.0.1'
  
#  def configure(&block)
#    @@configuration = Jasminewebos::Configuration.new
#    yield @@configuration
#  end
#  
#  def configuration
#    @@configuration
#  end
end

require "jasminewebos/cli"
require "jasminewebos/server"
require "jasminewebos/generator"
require "jasminewebos/configuration"