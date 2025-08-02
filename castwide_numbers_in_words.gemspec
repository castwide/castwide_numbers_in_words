# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'numbers_in_words/version'

Gem::Specification.new do |gem|
  gem.name          = 'castwide_numbers_in_words'
  gem.description   = 'convert written numbers into Integers and vice-versa'
  gem.summary       = 'Example: NumbersInWords.in_words(123) # => ' \
    '"one hundred and twenty three", NumbersInWords.in_numbers("seventy-five point eight") # = > 75.8'

  gem.version       = NumbersInWords::VERSION
  gem.authors       = ['Fred Snyder']
  gem.email         = ['castwide@gmail.com']
  gem.homepage      = 'http://github.com/castwide/castwide_numbers_in_words'

  gem.add_development_dependency 'rspec', '~> 3.4.0'
  gem.add_development_dependency 'rubocop'

  gem.files         = `git ls-files`.split($INPUT_RECORD_SEPARATOR)
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']
end
