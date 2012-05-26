# encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sass'

APP_ROOT = File.dirname(File.expand_path(__FILE__))

class App < Sinatra::Base
  not_found do
    redirect '/'
  end

  get '/' do
    matches = request.env['REQUEST_URI'].match /\/\/(.*)\.(\w{2,3})/
    @lang =
      case matches && matches[2] || request.params['lang']
        when 'com'
          'eng'
        when 'ru'
          'ru'
        else 'eng'
      end

    erb :index
  end

end