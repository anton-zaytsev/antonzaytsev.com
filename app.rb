# encoding: utf-8
APP_ROOT = File.dirname(File.expand_path(__FILE__))

class App < Sinatra::Base

  #configure do
  #  set :server, :puma
  #end

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

  helpers do

    def link_to(text, url, opts={})
      attributes = ""
      opts.each { |key,value| attributes << key.to_s << "=\"" << value << "\" "}
      "<a href=\"#{url}\" #{attributes}>#{text}</a>"
    end

    def mail_to email, text=nil, attributes={}
      link_to "#{text || email}", "mailto:#{email}", attributes
    end
  end

  get '/' do
    matches = request.env['HTTP_HOST'].match /(.*)\.(\w{2,3})/

    @lang =
      case matches && matches[2] || request.params['lang']
        when 'com'
          'eng'
        when 'ru'
          'ru'
        else 'ru'
      end

    erb :index
  end

end