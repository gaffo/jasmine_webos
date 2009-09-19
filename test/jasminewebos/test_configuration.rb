require File.dirname(__FILE__) + '/../test_helper.rb'

class Jasminewebos::TestConfiguration < Test::Unit::TestCase
  
  context "with a default config" do
    setup do
      @config = Jasminewebos::Configuration.new(File.dirname(__FILE__))
    end
    should "have default port" do
      assert_equal(8888, @config.port)
    end
    should "have jasmine_root" do
      assert_equal(File.expand_path(File.join(File.dirname(__FILE__), "..", "..", "vendor", "jasmine")),
                   @config.jasmine_root)
    end
    should "have an app root" do
      assert_equal(File.dirname(__FILE__), @config.application_root)
    end
    
    should "have sources.json" do
      assert_equal(File.join(File.dirname(__FILE__), "sources.json"), @config.sources_json)
    end
    
    should "have specs_dir" do 
      assert_equal(File.join(File.dirname(__FILE__), "spec", "javascript", "spec"), @config.specs_dir)
    end
    
    should "have matchers_dir" do
      assert_equal(File.join(File.dirname(__FILE__), "spec", "javascript", "matchers"), @config.matchers_dir)
    end
    
    should "have jasminewebos_root" do
      assert_equal(File.expand_path(File.join(File.dirname(__FILE__), "..", "..")),
                   @config.jasminewebos_root)
    end
  end
  
end
