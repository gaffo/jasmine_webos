require 'optparse'

module Jasminewebos
  class CLI
    def self.execute(stdout, arguments=[])
      options = {
        :path     => '.'
      }
      mandatory_options = %w(  )

      parser = OptionParser.new do |opts|
        opts.banner = <<-BANNER.gsub(/^          /,'')
          Creates the files needed for jasmine development under webos

          Usage: #{File.basename($0)} 
          
          Options:
        BANNER
        opts.separator ""
        opts.on("-p", "--path=PATH", String,
                "The path to the folder to jasmineize",
                "Default: ~") { |arg| options[:path] = arg }
        opts.on("-h", "--help",
                "Show this help message.") { stdout.puts opts; exit }
        opts.parse!(arguments)

        if mandatory_options && mandatory_options.find { |option| options[option.to_sym].nil? }
          stdout.puts opts; exit
        end
      end

      path = options[:path]

      stdout.puts "monkeys"
    end
  end
end