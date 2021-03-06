# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vagrant_plugins/trellis_cert/identity.rb'

Gem::Specification.new do |spec|
  spec.name          = VagrantPlugins::TrellisCert::Identity.name
  spec.version       = VagrantPlugins::TrellisCert::Identity.version
  spec.authors       = ['Tang Rufus', 'Typist Tech']
  spec.email         = ['tangrufus@gmail.com', 'vagrant-trellis-cert@typist.tech']
  spec.metadata      = {
    'homepage_uri' => 'https://typist.tech/projects/vagrant-trellis-cert/',
    'source_code_uri' => 'https://github.com/TypistTech/vagrant-trellis-cert',
    'bug_tracker_uri' => 'https://github.com/TypistTech/vagrant-trellis-cert/issues',
    'mailing_list_uri' => 'https://typist.tech/go/newsletter/',
  }
  spec.summary       = VagrantPlugins::TrellisCert::Identity.summary
  spec.homepage      = 'https://typist.tech/projects/vagrant-trellis-cert'
  spec.license       = 'MIT'

  spec.required_ruby_version = ['~> 2.4', '>= 2.4.2']

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 2.1', '>= 2.1.4'
  spec.add_development_dependency 'rake', '~> 13.0', '>= 13.0.1'
end
