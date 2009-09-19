module Jasminewebos
  class Configuration
    attr_accessor :port, :jasmine_root
    
    def initialize()
      @port = 8888
      @jasmine_root = File.expand_path(File.join(File.dirname(__FILE__), "..", "..", "vendor", "jasmine"))
    end
  end
end