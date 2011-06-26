require 'rack-rewrite'

DOMAIN = 'antonzaycev.ru'

# Redirect to the www version of the domain in production
use Rack::Rewrite do
  r301 %r{.*}, "http://#{DOMAIN}$&", :if => Proc.new {|rack_env|
    rack_env['SERVER_NAME'] != DOMAIN && ENV['RACK_ENV'] == "production"
  }
end


require 'rubygems'
require 'sinatra'
require 'haml'
require 'sass'
require 'antonzaycev'

run Sinatra::Application