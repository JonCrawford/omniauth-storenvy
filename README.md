# OmniAuth Storenvy

An unofficial [OmniAuth](https://github.com/intridea/omniauth) strategy for Storenvy. To use it, you'll need OmniAuth and a registered application on [Storenvy](https://developers.storenvy.com/applications).

## Usage

`OmniAuth::Storenvy` is Rack middleware. Below are examples written specifically for Rails 3.1+, however it can be used in other frameworks based off of Rack (Sinatra, etc). See the [OmniAuth docs](https://github.com/intridea/omniauth) for detailed usage examples.

Create an initializer file, and tell OmniAuth you'd like to register Storenvy as a provider:

    Rails.application.config.middleware.use OmniAuth::Builder do
      provider :storenvy, ENV['STORENVY_TOKEN'], ENV['STORENVY_SECRET']
    end

Optionally, you may also pass in space-separated [Permission Scopes](https://developers.storenvy.com/authentication#scopes):


    Rails.application.config.middleware.use OmniAuth::Builder do
      provider :storenvy, ENV['STORENVY_TOKEN'], ENV['STORENVY_SECRET'], :scope => 'user store_read store_write'
    end

## Installation

Add OmniAuth and OmniAuth::Storenvy to your application's Gemfile:

    gem 'omniauth', '~>1.0'
    gem 'omniauth-storenvy', '~>0.1.0'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install omniauth
    $ gem install omniauth-storenvy

`OmniAuth::Storenvy` has only been test on Ruby 1.9.2

## Examples

Check out a super-simple Sinatra example [here](https://github.com/ohokay/omniauth-storenvy/blob/master/examples/config.ru).

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request