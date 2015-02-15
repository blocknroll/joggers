require 'sinatra'

get '/' do
  "Hello, World!"
end



config.ru
  $LOAD_PATH.unshift(File.expand_path(File.dirname(__FILE__) + "/app"))
