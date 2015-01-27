$:.push File.expand_path('../lib', __FILE__)

require 'antivirus/version'

Gem::Specification.new do |s|
  s.name        = 'antivirus'
  s.version     = Antivirus::VERSION
  s.authors     = ['kami']
  s.email       = ['kami30k@gmail.com']
  s.homepage    = 'https://github.com/kami30k/antivirus'
  s.summary     = 'Profanity filter for Rails application.'
  s.description = 'Profanity filter for Rails application.'
  s.license     = 'MIT'

  s.files = Dir['lib/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  s.add_dependency 'rails', '~> 4.2.0'

  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'rspec-rails'
end
