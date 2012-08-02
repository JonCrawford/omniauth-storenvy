# Credit this mini-app to: https://github.com/zquestz/omniauth-google-oauth2
# Make sure to setup the ENV variables STORENVY_KEY and STORENVY_SECRET
# bundle exec rackup

require 'rubygems'
require 'bundler'
require 'sinatra'
require 'omniauth'
require 'omniauth-storenvy'

OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

class App < Sinatra::Base
  get '/' do
    <<-HTML
    <ul>
      <li><a href='/auth/storenvy'>Sign in with Storenvy</a></li>
    </ul>
    HTML
  end

  get '/auth/:provider/callback' do
    content_type 'text/plain'
    request.env['omniauth.auth'].to_hash.inspect rescue "No Data"
  end

  get '/auth/failure' do
    content_type 'text/plain'
    request.env['omniauth.auth'].to_hash.inspect rescue "No Data"
  end
end

use Rack::Session::Cookie, :secret => ENV['RACK_COOKIE_SECRET']

use OmniAuth::Builder do
  provider :storenvy, ENV['STORENVY_KEY'], ENV['STORENVY_SECRET'] #, :scope => 'store_write store_read user'
end

run App.new