$LOAD_PATH.unshift(File.dirname(__FILE__) + '/../../lib')
require 'jasmine-webos'

require 'test/unit/assertions'

World(Test::Unit::Assertions)
