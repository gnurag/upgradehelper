# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'upgradehelper/version'

Gem::Specification.new do |spec|
  spec.name          = 'upgradehelper'
  spec.version       = UpgradeHelper::VERSION
  spec.authors       = ['Anurag Patel']
  spec.email         = ['gnurag@gmail.com']
  spec.summary       = 'A command line tool to assist Satellite 6 upgrade process'
  spec.description   = 'Upgrade Helper is a a command line tool to assist Satellite 6 upgrade process'
  spec.homepage      = 'https://github.com/gnurag/upgradehelper'
  spec.license       = 'GPL-3.0'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'clamp', '~>1.0.0', '>= 1.0.0'
end
