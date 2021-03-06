# Ifill: A Ruby wrapper for the Compilation of Presidential Documents

The White House releases a lot of stuff, and some of it is included in what's known as the [Compilation of Presidential Documents](http://www.gpo.gov/fdsys/browse/collection.action?collectionCode=CPD). This is a Ruby library for accessing details about those documents, including subjects, dates, locations and more.

Nearly every day, the White House releases one or more official publications, which may include presidential statements, announcements of nominations, press releases and schedule information. These are published by the Government Printing Office. Ifill wraps JSON endpoints exposed by GPO, which has created a [mobile application](http://m.gpo.gov/dcpd) for browsing and searching these documents. I owe a debt of gratitude to the government employees who made these endpoints available; your commitment to making public information more easily accessible is truly a public service.

Ifill is named for [Gwen Ifill](http://en.wikipedia.org/wiki/Gwen_Ifill), a former New York Times White House correspondent.

The current version is 0.7. It has been tested under Ruby 2.1, 2.0 and 1.9.3.

## Installation

Add this line to your application's Gemfile:

    gem 'ifill'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ifill

## Usage

    require 'rubygems'
    require 'ifill'
    include Ifill
    
    @latest_docs = Document.latest
    
Please see [the documentation](http://dwillis.github.com/ifill/) for a more complete description of the library.

## Tests

Ifill uses minitest and is tested under Ruby 1.9.3; to run the tests:
  
    rake test

## License

Ifill is licensed under the MIT License. See LICENSE.txt for more details.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
