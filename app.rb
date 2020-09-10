require 'sinatra'
require 'browser'

get '/' do
  erb :index, locals: { browser: Browser.new(request.user_agent) }
end
