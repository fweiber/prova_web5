
require 'sinatra'

require 'json'
require_relative 'lib/prova_web5/velocity'
require_relative 'lib/prova_web5/weight'

# exemplo
class App < Sinatra::Base
  get '/' do
    "Hello, world! This is temp app.\n"
  end

  get '/:conversion_type/:origin_unit/:value/:destination_unit' do
    content_type:json
    if params[:conversion_type] == 'velocity'
      temp_convertion = Velocity.new(params[:value].to_f, params[:origin_unit])
      { temp: temp_convertion.send(params[:destination_unit]) }.to_json
    elsif params[:conversion_type] == 'weight'
      temp_convertion = Velocity.new(params[:value].to_f, params[:origin_unit])
      { temp: temp_convertion.send(params[:destination_unit]) }.to_json
    else
      { temp: 0 }.to_json
    end
  end
end
