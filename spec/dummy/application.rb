$:.unshift File.expand_path('../../../lib', __FILE__)

require 'action_controller/railtie'
require 'active_record'
require 'antivirus'

module Dummy
  class Application < Rails::Application
    config.secret_token = 'abcdefghijklmnopqrstuvwxyz0123456789'
    config.session_store :cookie_store, key: '_dummy_session'
    config.eager_load = false
    config.active_support.deprecation = :log
    config.i18n.load_path += Dir[Rails.root.join('spec/dummy/config/locales/*.yml')]
  end
end

Dummy::Application.initialize!

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: ':memory:')

class Post < ActiveRecord::Base
  validates :content, profanity_filter: true
end

class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :content

      t.timestamps null: true
    end
  end
end

CreatePosts.new.change
