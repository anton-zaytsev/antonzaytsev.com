# encoding: utf-8
APP_ROOT = File.dirname(File.expand_path(__FILE__))

class App < Sinatra::Base

  #helpers do
  #  def get_lang
  #    languages = []
  #
  #    unless request.env['HTTP_ACCEPT_LANGUAGE']
  #      return ['en']
  #    end
  #
  #    hal = request.env['HTTP_ACCEPT_LANGUAGE']
  #    hal = hal.split(',')
  #    hal.each do |l|
  #      lang, priority = l.split(';')
  #      languages << lang
  #    end
  #
  #    languages
  #  end
  #end

  not_found do
    redirect '/'
  end

  get '/' do
    matches = request.env['HTTP_HOST'].match /(.*)\.(\w{2,3})/

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