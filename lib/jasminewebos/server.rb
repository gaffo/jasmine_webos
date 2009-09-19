module Jasminewebos
  class Server
    def initialize(configuration)
      @configuration = configuration
    end
    
    def start
      puts "Starting JasmineWebOS Server from #{@configuration.application_root}"
      
      require File.expand_path(File.join(@configuration.jasmine_root, 
                                         "contrib", 
                                         "ruby", 
                                         "jasmine_spec_builder"))
      
      Jasmine::SimpleServer.start(@configuration.port,
                                  lambda{spec_files},
                                  dir_mappings,
                                  lambda{source_files})
    end
    
    def spec_files
      raw_specs = Dir.glob(File.join(application_src_dir, "**/*[Ss]pec.js"))
      raw_specs.collect {|f| f.sub(application_src_dir, "/app")}
    end
    
    def source_files
      jasmine = Dir.glob(File.join(jasmine_lib_dir, "*"))
      jasmine = jasmine.collect {|f| f.sub(jasmine_lib_dir, "/lib")}
      
      matchers = Dir.glob(File.join(@configuration.matchers_dir, "**/*.js"))
      matchers = matchers.collect {|f| f.sub(@configuration.matchers_dir, "/matchers")}
      
      sources = Dir.glob(File.join(application_src_dir, "**/*.js"))
      sources = sources.collect {|f| f.sub(application_src_dir, "/app")}
      
      jasmine + matchers + sources
    end
    
    def dir_mappings
      {
              "/app" => application_src_dir,
              "/spec" => @configuration.specs_dir,
              "/matchers" => @configuration.matchers_dir,
              "/lib" => jasmine_lib_dir,
              "/matchers" => @configuration.matchers_dir
      }
    end
    
    private
    def application_src_dir
      File.join(@configuration.application_root, "app")
    end
    
    def jasmine_lib_dir
      File.expand_path(File.join(@configuration.jasmine_root, "lib"))
    end
  end
end