# Isikukood

Simple Ruby library for validating and extracting information from Estonian Personal Identification Code.
Know-how is taken from appropriate wiki page: http://et.wikipedia.org/wiki/Isikukood

## Installation

Add this line to your application's Gemfile:

    gem 'isikukood'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install isikukood

## Usage

```ruby
require 'isikukood'

code = Isikukood.new('37605030299')
code.valid?   # => true
code.sex      # => 'M'
code.age      # => 35
code.birthday # => '1976-05-03'
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
