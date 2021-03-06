# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{jasmine_webos}
  s.version = "0.0.8"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Mike Gaffney"]
  s.date = %q{2009-10-28}
  s.default_executable = %q{jasmine_webos}
  s.description = %q{Generates the stub files needed for testing with jasmine on a webos application.
Runs a server to view your tests against.}
  s.email = ["mr.gaffo@gmail.com"]
  s.executables = ["jasmine_webos"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "PostInstall.txt"]
  s.files = ["History.txt", "Manifest.txt", "PostInstall.txt", "README.rdoc", "Rakefile", "bin/jasmine_webos", "lib/jasminewebos.rb", "lib/jasminewebos/cli.rb", "lib/jasminewebos/configuration.rb", "lib/jasminewebos/generator.rb", "lib/jasminewebos/server.rb", "templates/webos/spec/javascript/matchers/all_matchers.js", "templates/webos/spec/javascript/spec/sample_spec.js", "vendor/jasmine/lib/jasmine.css", "vendor/jasmine/lib/jasmine-0.9.0.js", "vendor/jasmine/lib/json2.js", "vendor/jasmine/lib/TrivialReporter.js", "vendor/jasmine/contrib/ruby/run.html", "vendor/jasmine/contrib/ruby/jasmine_spec_builder.rb", "vendor/jasmine/contrib/ruby/jasmine_runner.rb", "vendor/jasmine/contrib/ruby/spec/jasmine_runner_spec.rb", "jslib/prototype.js", "test/test_helper.rb", "test/jasminewebos/test_server.rb", "test/jasminewebos/test_configuration.rb", "test/jasminewebos/test_jasminewebos_cli.rb", "test/test_jasminewebos.rb"]
  s.homepage = %q{http://github.com/gaffo/jasmine_webos}
  s.post_install_message = %q{PostInstall.txt}
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{jasmine_webos}
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Generates the stub files needed for testing with jasmine on a webos application}
  s.test_files = ["test/test_helper.rb", "test/jasminewebos/test_server.rb", "test/jasminewebos/test_configuration.rb", "test/jasminewebos/test_jasminewebos_cli.rb", "test/test_jasminewebos.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<thin>, [">= 1.2.4"])
      s.add_runtime_dependency(%q<json>, [">= 1.1.9"])
      s.add_development_dependency(%q<hoe>, [">= 2.3.3"])
    else
      s.add_dependency(%q<thin>, [">= 1.2.4"])
      s.add_dependency(%q<json>, [">= 1.1.9"])
      s.add_dependency(%q<hoe>, [">= 2.3.3"])
    end
  else
    s.add_dependency(%q<thin>, [">= 1.2.4"])
    s.add_dependency(%q<json>, [">= 1.1.9"])
    s.add_dependency(%q<hoe>, [">= 2.3.3"])
  end
end
