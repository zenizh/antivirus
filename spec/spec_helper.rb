require 'rack/test'
require 'dummy/application'

require 'rspec/rails'

RSpec.configure do |config|
  config.before :each do
    Post.delete_all
  end
end
