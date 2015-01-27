class Post < ActiveRecord::Base
  validates :content, presence: true, profanity_filter: true
end
