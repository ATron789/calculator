require 'sinatra'
require 'sinatra/reloader'
require 'pry'

get '/' do
  @title = 'Maestro Calculator'
  erb :index
end

get '/ciao' do

  @title = 'Results'
  @first_input = params["first_input"].to_f
  @second_input = params["second_input"].to_f
  @ops = params["ops"]

  require './calculator'

  @result = Calculator.new(@first_input, @second_input, @ops).calculate
  # binding.pry

  erb :ciao
end
