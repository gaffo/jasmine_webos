$:.unshift(File.dirname(__FILE__)) unless
$:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

module Jasminewebos
  VERSION = '0.0.1'
end

require "jasminewebos/cli"
require "jasminewebos/server"
require "jasminewebos/generator"
require "jasminewebos/configuration"
