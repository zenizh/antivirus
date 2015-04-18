require 'dummy/application'

RSpec.configure do |config|
  config.before :each do
    Post.delete_all
  end
end
