# Mmfont

[![Build Status](https://travis-ci.org/yelinaung/mmfont.svg)](https://travis-ci.org/yelinaung/mmfont)
[![Gem Version](https://badge.fury.io/rb/mmfont.svg)](http://badge.fury.io/rb/mmfont)
[![Dependency Status](https://gemnasium.com/yelinaung/mmfont.svg)](https://gemnasium.com/yelinaung/mmfont)

A simple gem which converts zawgyi1 <=> unicode strings. It uses the rules from [paytan](https://github.com/trhura/paytan) and basically, the ruby converter.
It's written with TDD. Special thanks to [@steveklabnik](https://github.com/steveklabnik) for his tutorials [How I Start Ruby](http://www.howistart.org/posts/ruby/1).


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'mmfont'
```

And then execute:

```bash
$ bundle
```

Or install it yourself as:

```bash
$ gem install mmfont
```

## Usage

```ruby
require 'mmfont'

a = Mmfont::Converter.new

a.uni512zg1("မင်္ဂလာပါ")  # returns zg strings "မဂၤလာပါ"

a.zg12uni51("မဂၤလာပါ")   # returns unicode strings "မင်္ဂလာပါ"

```

## Is it fast ?
I am not sure. But of course, Ruby is basically slow, regardless of implementations, compared to Nodejs, Go, Rust etc. 
Feel free to send me some bunchmarks.

## TODO
- ~~Write TESTS!~~

## Contributing

1. Fork it ( https://github.com/yelinaung/mmfont )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## License
MIT
