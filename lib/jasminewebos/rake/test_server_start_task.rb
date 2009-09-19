module Jasminewebos
  module Rake
    class TestServerStartTask
      attr_accessor :port, :jasmine_root, :spec_dir, :app_root

      def initialize(name = :'jasmine:webos:testserver:start')
        @name = name
        @port = 8888
        @jasmine_root = File.join(File.dirname(__FILE__), "..", "..", "vendor", "jasmine")
        yield self if block_given?
        raise "Must Set app_root" unless @app_root
        @spec_dir ||= File.join(@app_root, "spec/", "javascript", "spec")
        @matchers_dir ||= File.join(@app_root, "spec/", "javascript", "matchers")
        @sources_json ||= File.join(@app_root, "sources.json")
        define
      end
    
      def define
        desc "Launch Jasmine WebOS Test Server"
        task @name do
#          puts "Starting Selenium Remote Control at 0.0.0.0:#{@port}..."
#          puts "Selenium Remote Control at 0.0.0.0:#{@port} ready"
          puts "name: #{@name}"
          puts "port: #{@port}"
          puts "jasmine_root: #{@jasmine_root}"
          puts "spec_dir: #{@spec_dir}"
          puts "matchers_dir: #{@matchers_dir}"
          puts "sources.json: #{@sources_json}"
        end
      end

    end
  end
end
