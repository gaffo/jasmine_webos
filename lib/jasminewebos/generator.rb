require 'fileutils'
module Jasminewebos
  class Generator
    def initialize(config)
      @config = config
    end
    def run
      from = File.expand_path(File.join(File.dirname(__FILE__), "..", "..", "templates", "webos", "spec"))
      FileUtils.cp_r(from,
                     @config.application_root)
    end
  end
end