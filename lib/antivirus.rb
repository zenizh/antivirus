require 'antivirus/railtie' if defined?(Rails)

module Antivirus
  autoload :Validator, 'antivirus/validator'
end
