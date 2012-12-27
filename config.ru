require 'rack-rewrite'

use Rack::Rewrite do
  r301 /.*/,
     Proc.new { |path, rack_env| "http://#{rack_env['SERVER_NAME'].gsub(/www\./i, '') }#{path}" },
     :if => Proc.new { |rack_env| rack_env['SERVER_NAME'] =~ /www\./i }
end

require 'rubygems'
require 'sinatra'
require 'sass'
require './app'

run App