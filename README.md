**This is a fork of the [numbers_in_words gem by Mark Burns](https://github.com/markburns/numbers_in_words).** The original license is reproduced in [NUMBERS_IN_WORDS.txt](NUMBERS_IN_WORDS.txt).

Changes in this fork:
* Compatibility with [Opal](https://github.com/opal/opal)
* Updates for Ruby 3

Installation
============

```ruby
gem 'castwide_numbers_in_words'
```

Usage
=========

```ruby
require 'numbers_in_words'

NumbersInWords.in_words(112)
#=> one hundred and twelve

NumbersInWords.in_numbers("one googol")
#=>10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000

NumbersInWords.in_numbers("Seventy million, five-hundred and fifty six thousand point eight nine three")
#=> 70556000.893

NumbersInWords.in_numbers("nineteen sixty five")
#=> 1965
```


Monkey patch version

```ruby
require 'numbers_in_words'
require 'numbers_in_words/duck_punch'
112.in_words
#=> one hundred and twelve

"one googol".in_numbers
#=>10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000

"Seventy million, five-hundred and fifty six thousand point eight nine three".in_numbers
#=> 70556000.893
```
