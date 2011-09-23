$:.push File.expand_path("../lib", __FILE__)
require 'ruby-tcl/version'

Gem::Specification.new do |s|
  s.name = 'ruby-tcl'
  s.version = Tcl::VERSION
  s.platform = Gem::Platform::RUBY
  s.date = "2011-09-23"
  s.authors = ['Sam Stephenson', 'Mark J. Titorenko']
  s.email = 'mark.titorenko@alces-software.com'
  s.homepage = 'http://github.com/mjtko/ruby-tcl'
  s.summary = %Q{A minimal Ruby interface to libtcl.}
  s.description = %Q{Bindings to the Tcl interpreter for use from within ruby.}
  s.extra_rdoc_files = [
    'LICENSE',
    'README.rdoc',
  ]
  s.extensions = ["ext/tcl_ext/extconf.rb"]

  s.required_rubygems_version = Gem::Requirement.new('>= 1.3.7')
  s.rubygems_version = '1.3.7'
  s.specification_version = 3

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_development_dependency 'test-unit'
  s.add_development_dependency 'bundler'
  s.add_development_dependency 'bueller'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rake-compiler'
end

