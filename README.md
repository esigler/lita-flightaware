# lita-flightaware

[![Build Status](https://img.shields.io/travis/esigler/lita-flightaware/master.svg)](https://travis-ci.org/esigler/lita-flightaware)
[![MIT License](https://img.shields.io/badge/license-MIT-brightgreen.svg)](https://tldrlegal.com/license/mit-license)
[![RubyGems :: RMuh Gem Version](http://img.shields.io/gem/v/lita-flightaware.svg)](https://rubygems.org/gems/lita-flightaware)
[![Coveralls Coverage](https://img.shields.io/coveralls/esigler/lita-flightaware/master.svg)](https://coveralls.io/r/esigler/lita-flightaware)
[![Code Climate](https://img.shields.io/codeclimate/github/esigler/lita-flightaware.svg)](https://codeclimate.com/github/esigler/lita-flightaware)
[![Gemnasium](https://img.shields.io/gemnasium/esigler/lita-flightaware.svg)](https://gemnasium.com/esigler/lita-flightaware)

A FlightAware plugin for [Lita](https://github.com/jimmycuadra/lita).

## Installation

Add lita-flightaware to your Lita instance's Gemfile:

``` ruby
gem "lita-flightaware"
```

## Configuration

You'll need to get an API key and your Page ID, instructions for how to do so are here:
http://flightaware.com/commercial/flightxml/key

Add the following variable to your Lita config file:

``` ruby
config.handlers.flightaware.api_key = '_your_key_here_'
config.handlers.flightaware.username = '_your_username_here_'
```

## Usage

```
flight <flight number> - Show details for <flight number>
```

## License

[MIT](http://opensource.org/licenses/MIT)
