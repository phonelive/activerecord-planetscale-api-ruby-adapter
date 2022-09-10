lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "active_record/connection_adapters/planetscale-api-ruby/version"

Gem::Specification.new do |spec|
  spec.name          = "activerecord-planetscale-api-ruby-adapter"
  spec.version       = ActiveRecord::ConnectionAdapters::PlanetscaleApiRuby::VERSION
  spec.authors       = ["David Plappert"]
  spec.email         = ["david@phonelivestreaming.com"]
  spec.summary       = %q{ActiveRecord Adapter for Planetscale MySQL Database}
  spec.description   = %q{My Desc Here}
  spec.homepage      = 'https://github.com/phonelivestreaming/planetscale-api-ruby'
  spec.license       = 'MIT'
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      f.match(%r{^(test|spec|features|docker)/i})
    end
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
  spec.add_runtime_dependency     'activerecord', '>= 6.0'
  spec.add_runtime_dependency     'retriable'
  spec.add_development_dependency 'appraisal'
  spec.add_development_dependency 'dotenv'
  spec.add_development_dependency 'minitest'
  spec.add_development_dependency 'minitest-reporters'
  spec.add_development_dependency 'minitest-retry'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'sqlite3'
end
