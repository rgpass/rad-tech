require 'sinatra'
require 'httparty'
require 'json'

URL = 'https://storage.googleapis.com/marketplace-prod-7728-shop-cdn-e5e2/interview/data.json'

get '/' do
  response = HTTParty.get(URL)
  @data = response.parsed_response if response.code == 200

  erb :index
end
