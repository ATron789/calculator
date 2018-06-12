require 'sinatra'
require 'sinatra/reloader'
require 'pry'

Accounts = {
  'user' => 'password'
}

get '/' do
  @title = 'login'
  erb :login
end

post '/home' do
  @user = params['user']
  @password = params['password']
  binding.pry
  if Accounts.key?(@user) && Accounts.has_value?(@password)
    @title = 'Maestro Calculator'
    erb :index
  else
    @title = 'register'
    erb :account
  end
end

post '/welcome' do
  # binding.pry
  @new_user = params['new_user']
  @new_password = params['new_password']
  Accounts[@new_user] = @new_password
  erb :welcome
end



get '/ciao' do

  @title = 'Results'
  @fi = params["fi"].to_f
  @si = params["si"].to_f
  @op = params["op"]

  require './calculator'

  @result = Calculator.new(@fi, @si, @op).calculate
  binding.pry

  erb :ciao
end
