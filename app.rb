# encoding: utf-8

require 'rubygems'
require 'sinatra'
require 'haml'
require 'sass'

APP_ROOT = File.dirname(File.expand_path(__FILE__))

class App < Sinatra::Base
  not_found do
    haml :error
  end

  get '/' do
    @work =
      '<ul>
		  <li>Проектирование, разработка веб-систем, сервисов и сайтов</li>
			<li>Проектирование баз данных (MySQL)</li>
			<li>Проектирование удобных, легких интерфейсов</li>
			<li>Кроссбраузерная валидная верстка (xHTML, CSS, XML, XSLT) под все популярные браузеры: Firefox 3+, Chrome 5+, Internet Explorer 7+, Safari 4+, Opera 10+</li>
			<li>Разработка (<span class="bold">Senior</span> in <a href="http://php.net">PHP</a>, <span class="bold">Senior</span> in JavaScript, <span class="gray">Junior</span> in <a href="http://www.rubyonrails.ru/">Ruby on Rails</a>)</li>
    </ul>'

    @contact =
      '<ul>
        <li>Email: <span class="glue">contact[at]antonzaycev[dot]ru</span></li>
        <li>Skype: <a href="skype:antonzaycev">antonzaycev</a></li>
        <li>Github: <a target="_blank" href="http://github.com/anton-zaycev">http://github.com/anton-zaycev</a></li>
      </ul>'

    haml :index
  end

#get '/stylesheets/screen.css' do
#  scss 'stylesheets/screen'.to_sym
#end

#i18 = R18n::I18n.new
end