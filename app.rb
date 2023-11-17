require 'sinatra'
require 'httparty'
require 'json'

get '/' do
  @data = [{ 'name' => 'Foo' }, { 'name' => 'Bar' }]
  erb :index
end
