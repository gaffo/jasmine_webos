require File.dirname(__FILE__) + '/../test_helper.rb'

class Jasminewebos::TestConfiguration < Test::Unit::TestCase
  
  context "with a default config" do
    setup do
      @config = Jasminewebos::Configuration.new
    end
    should "have default port" do
      assert_equal(8888, @config.port)
    end
    should "have jasmine_root" do
      assert_equal(File.expand_path(File.join(File.dirname(__FILE__), "..", "..", "vendor", "jasmine")),
                   @config.jasmine_root)
    end
    should "not have app root set" do
      assert_nil(@config.application_root)
    end
    should "throw for sources.json with no app set" do
      assert_raise(Exception){@config.sources_json}
    end
    should "throw for matchers with no app set" do
      assert_raise(Exception){@config.matchers_dir}
    end
    should "throw for specs with no app set" do
      assert_raise(Exception){@config.specs_dir}
    end
  end

end
