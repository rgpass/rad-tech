require 'sinatra'
require 'httparty'
require 'json'

get '/' do
  erb :index
end
