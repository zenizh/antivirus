require 'rails'

module Antivirus
  class Railtie < ::Rails::Railtie
    initializer 'antivirus' do
      ActiveSupport.on_load :active_record do
        ActiveRecord::Base.send :include, Validator
      end
    end
  end
end
