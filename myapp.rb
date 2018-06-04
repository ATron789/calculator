require 'sinatra'
require 'sinatra/reloader'
require 'pry'

get '/' do
  @title = 'Maestro Calculator'
  erb :index
end

get '/ciao' do

  @title = 'Results'

  # binding.pry
  @first_input = params["first_input"].to_i
  @second_input = params["second_input"].to_i
  @ops = params["ops"]

  require_relative 'calculator'

  @r = Calculator.new
  @result = @r.calculate

  # case @ops
  # when 'sum'
  #   @result = @first_input + @second_input
  # when 'min'
  #   @result = @first_input - @second_input
  # when 'tim'
  #   @result =  @first_input * @second_input
  # when 'div'
  #   @result = @first_input / @second_input
  # end

  erb :ciao
end
