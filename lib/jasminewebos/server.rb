module Jasminewebos
  class Server
    def initialize(configuration)
      @configuration = configuration
    end
    
    def start
      puts "Starting JasmineWebOS Server from #{@configuration.application_root}"
      puts "on http://localhost:#{@configuration.port}"
      
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
      raw_specs = Dir.glob(File.join(@configuration.specs_dir, "**/*[Ss]pec.js"))
      raw_specs.collect {|f| f.sub(@configuration.specs_dir, "/spec")}
    end
    
    def source_files
      jasmine = Dir.glob(File.join(jasmine_lib_dir, "*"))
      jasmine = jasmine.collect {|f| f.sub(jasmine_lib_dir, "/lib")}
      
      matchers = Dir.glob(File.join(@configuration.matchers_dir, "**/*.js"))
      matchers = matchers.collect {|f| f.sub(@configuration.matchers_dir, "/matchers")}
      
      sources = Dir.glob(File.join(application_src_dir, "**/*.js"))
      sources = sources.collect {|f| f.sub(application_src_dir, "/app")}
      
      javascripts_sources = Dir.glob(File.join(javascripts_sources_dir, "**/*.js"))
      javascripts_sources = javascripts_sources.collect {|f| f.sub(javascripts_sources_dir, "/javascripts")}
      
      framework = Dir.glob(File.join(framework_dir, "**/*.js"))
      framework = framework.collect {|f| f.sub(framework_dir, "/framework")}
      
      framework + jasmine.sort.reverse + matchers.sort + sources.sort + javascripts_sources.sort
    end
    
    def dir_mappings
      {
              "/framework" => framework_dir,
              "/app" => application_src_dir,
              "/spec" => @configuration.specs_dir,
              "/matchers" => @configuration.matchers_dir,
              "/lib" => jasmine_lib_dir,
              "/matchers" => @configuration.matchers_dir,
              "/javascripts" => javascripts_sources_dir
      }
    end
    
    private
    def javascripts_sources_dir
      File.join(@configuration.application_root, "javascripts")
    end
    
    def framework_dir
      File.join(@configuration.jasminewebos_root, "jslib")
    end
    
    def application_src_dir
      File.join(@configuration.application_root, "app")
    end
    
    def jasmine_lib_dir
      File.expand_path(File.join(@configuration.jasmine_root, "lib"))
    end
  end
end