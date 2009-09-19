module Jasminewebos
  class Configuration
    attr_accessor :port, :jasmine_root, :application_root
    
    def initialize()
      @port = 8888
      @jasmine_root = File.expand_path(File.join(File.dirname(__FILE__), "..", "..", "vendor", "jasmine"))
    end
    
    def specs_dir
      rase_error_if_no_application_root
    end
    
    def matchers_dir
      rase_error_if_no_application_root
      
    end
    
    def sources_json
      rase_error_if_no_application_root
      
    end
    
    private
    def rase_error_if_no_application_root
      msg = <<EOF
Application Root Configuration Not Set, 
Please put the following in spec/jasminewebos.rb:
-------------------------------------------------
Jasminewebos.configure do |config|
  config.application_root = File.join(File.dirname(__FILE__), "..")
end
EOF
      raise Exception.new(msg)
    end
  end
end