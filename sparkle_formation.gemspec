$LOAD_PATH.unshift File.expand_path(File.dirname(__FILE__)) + '/lib/'
require 'sparkle_formation/version'
Gem::Specification.new do |s|
  s.name = 'sparkle_formation'
  s.version = SparkleFormation::VERSION.version
  s.summary = 'Orchestration Template Generator'
  s.author = 'Chris Roberts'
  s.email = 'chrisroberts.code@gmail.com'
  s.homepage = 'http://github.com/heavywater/sparkle_formation'
  s.description = 'Ruby DSL for programmatic orchestration API template generation'
  s.license = 'Apache-2.0'
  s.require_path = 'lib'
  s.required_ruby_version = '>= 2.0'
  s.add_runtime_dependency 'attribute_struct', '>= 0.3.0', '< 0.5'
  s.add_runtime_dependency 'multi_json'
  s.add_runtime_dependency 'bogo'
  s.add_development_dependency 'minitest'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rubocop'
  s.executables << 'generate_sparkle_docs'
  s.files = Dir['{lib,docs}/**/*'] + %w(sparkle_formation.gemspec README.md CHANGELOG.md LICENSE)
end
