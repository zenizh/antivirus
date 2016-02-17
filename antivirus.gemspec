$:.push File.expand_path('../lib', __FILE__)

require 'antivirus/version'

Gem::Specification.new do |s|
  s.name        = 'antivirus'
  s.version     = Antivirus::VERSION
  s.authors     = 'kami'
  s.email       = 'hiroki.zenigami@gmail.com'
  s.homepage    = 'https://github.com/kami-zh/antivirus'
  s.summary     = 'Profanity filter for Rails application.'
  s.description = 'Profanity filter for Rails application.'
  s.license     = 'MIT'

  s.files = `git ls-files -z`.split("\x0")

  s.add_dependency 'rails'

  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'rspec-rails'
end
