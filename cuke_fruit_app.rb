require 'sinatra'
require 'json'

class CukeFruitApp < Sinatra::Base
  set :data do
    JSON.parse File.read "fruits.json"
  end

  get "/fruits" do
    content_type :json
    CukeFruitApp.data.to_json
  end
end
