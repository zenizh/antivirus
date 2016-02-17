# Antivirus

[![Build Status](https://travis-ci.org/kami-zh/antivirus.svg)](https://travis-ci.org/kami-zh/antivirus)
[![Gem Version](https://badge.fury.io/rb/antivirus.svg)](http://badge.fury.io/rb/antivirus)

Antivirus provides a validator which filter profane words for Rails application.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'antivirus'
```

And then execute:

```
$ bundle
```

## Usage

Define profane words as array in `config/locales/*.yml` with `antivirus.profane_words` key.

`antivirus.message` key is an error message when value includes profane words.

```yml
en:
  antivirus:
    message: includes profane words.
    profane_words:
      - foo
      - bar
      - baz
```

For example, Post model exists like this:

```ruby
class Post < ActiveRecord::Base
  validates :content, profanity_filter: true
end
```

In this case, `post` can't include profane words.

```ruby
post = Post.create(content: 'foo')

post.valid?
#=> false

post.errors.full_messages
#=> ["Content includes profane words."]
```

## Contributing

1. Fork it ( https://github.com/kami-zh/antivirus/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request
