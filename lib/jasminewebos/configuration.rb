module Jasminewebos
  class Configuration
    attr_accessor :port, :jasmine_root, :application_root, :specs_dir,
                  :matchers_dir, :sources_json
    
    def initialize(application_root)
      @port = 8888
      @jasmine_root = File.expand_path(File.join(File.dirname(__FILE__), "..", "..", "vendor", "jasmine"))
      @application_root = application_root
      @specs_dir = File.join(@application_root, "spec", "javascript", "spec")
      @matchers_dir = File.join(@application_root, "spec", "javascript", "matchers")
      @sources_json = File.join(@application_root, "sources.json")
    end
  end    
end