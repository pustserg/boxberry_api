require_relative 'lib/boxberry_api/version'
Gem::Specification.new do |spec|
  spec.name = 'boxberry_api'
  spec.version = BoxberryApi::VERSION
  spec.authors = ['pustserg']
  spec.email = 'pustserg@yandex.ru'
  spec.homepage = 'https://github.com/pustserg/boxberry_api'
  spec.summary = %q{A wrapper for Boxberry API}
  spec.description = %q{This gem provides a Ruby wrapper over Boxberry API.}
  spec.license = 'MIT'
  spec.files = `git ls-files`.split("\n")
  spec.test_files = `git ls-files -- {spec}/*`.split("\n")
  spec.require_paths = ['lib']

  spec.add_dependency 'configurations'
  spec.add_dependency 'zeitwerk'
end
