module Jasminewebos
  class Server
    def initialize(configuration)
      @configuation = configuration
    end
    
    def start
      puts "Starting JasmineWebOS Server from #{@configuation.application_root}"
    end
  end
end