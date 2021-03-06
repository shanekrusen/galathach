# Gal&aacute;thach
[![Build Status](https://travis-ci.org/shanekrusen/galathach.svg?branch=master)](https://travis-ci.org/shanekrusen/galathach) [![Code Climate](https://codeclimate.com/github/shanekrusen/galathach/badges/gpa.svg)](https://codeclimate.com/github/shanekrusen/coligny) [![Test Coverage](https://codeclimate.com/github/shanekrusen/galathach/badges/coverage.svg)](https://codeclimate.com/github/shanekrusen/coligny/coverage)



A Ruby library for translating between English and the Modern Gaulish Language

TO-DO:  
	-Finish Part of Speech tagger.
		+ Make POS tagger more specific using contextual evidence from surrounding words.
	-Add n-gram analysis for identifying common phrases.
	-Add sentence parser based on POS data and n-gram analysis.
	-Add lookup methods to translate words or phrases to Gaulish.
	-Add methods to generate Gaulish sentence based on data from sentence parser.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'galathach'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install galathach

## Usage

Not yet applicable.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/shanekrusen/galathach. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Credit

The main functionality for the POS Tagger in this gem is provided by Grady Ward's Moby Project. 

