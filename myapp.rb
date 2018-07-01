require 'sinatra'
require 'sinatra/reloader'
require 'pry'

Accounts = {
  'user' => 'pass'
}
@@current_user = nil
@@login_attempts =  0

get '/' do
  if @@current_user
    redirect '/home'
  else
    redirect '/login'
  end
end

get '/login' do
  @title = 'Login'
  erb :login
end

get '/home' do
  if @@current_user
    @title = 'Maestro Calculator'
    erb :index
  else
    redirect '/login'
  end
end

post '/login' do
  @user = params['user']
  @password = params['password']
  if Accounts.key?(@user) && Accounts.has_value?(@password)
    @@login_attempts = 0
    @@current_user = @user
    redirect '/home'
  else
    @@login_attempts += 1
    redirect '/login'
  end
end

get '/registration' do
  @title = 'Register your account'
  erb :registration
end

post '/account_creation' do
  # binding.pry
  @@login_attempts = 0
  @@current_user = params['new_user']
  @new_password = params['new_password']
  Accounts[@@current_user] = @new_password
  redirect '/welcome'
end

get '/welcome' do
  @current_user = @@current_user
  erb :welcome
end

post '/signout' do
  @@current_user = nil
  redirect '/login'
end

get '/ciao' do

  @title = 'Results'
  @fi = params["fi"].to_f
  @si = params["si"].to_f
  @op = params["op"]

  require './calculator'

  @result = Calculator.new(@fi, @si, @op).calculate

  erb :ciao
end
