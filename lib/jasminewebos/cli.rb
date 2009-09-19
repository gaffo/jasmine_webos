require 'optparse'
require 'fileutils'

module Jasminewebos
  class CLI
    def self.execute(stdout, arguments=[])
      command = ""
      mandatory_options = %w(  )
      
      generate = false
      start_server = false
      
      parser = OptionParser.new do |opts|
        opts.banner = <<-BANNER.gsub(/^          /,'')
          Tools for working with jasmine_webos

          Usage: 
          #{File.basename($0)} -g
          generates the jasmine files in the current directory
          
          #{File.basename($0)} -s
          starts the jasmine server from the current directory
          
          Options:
        BANNER
        opts.separator ""
        opts.on("-g", String,
                "Starts the jasmine server from the current directory") { generate = true }
        opts.on("-s", String,
                "Generate the jasmine files in the current directory") { start_server = true }
        opts.on("-h", "--help",
                "Show this help message.") { stdout.puts opts; exit }
        opts.parse!(arguments)
        
        if mandatory_options && mandatory_options.find { |option| options[option.to_sym].nil? }
          stdout.puts opts; exit
        end
      end
      
      self.generate_stub(arguments, stdout) if generate
      self.launch_server(arguments, stdout) if start_server
      
    end
    
    def self.generate_stub(args, stdout)
      stdout.puts("Generating jasmine_webos required files")
      Jasminewebos::Generator.new(args, stdout).run
      stdout.puts("  Complete.")
    end
    
    def self.launch_server(args, stdout)
      config = Jasminewebos::Configuration.new(FileUtils.pwd)
      Jasminewebos::Server.new(config).start
    end
  end
end