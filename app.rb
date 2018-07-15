require 'sinatra'
require_relative 'coin_exchange.rb'

enable :sessions

get '/' do
  session[:cents] = -1
  erb :default
end

post '/change' do
  session[:cents] = params['cents']
  redirect '/change'
end

get '/change' do
  if session[:cents].to_i <= 0
    redirect '/'
  end
  converted_coins = ''
  coin_exchange(session[:cents].to_i).each_pair do |key, val|
    converted_coins += val.to_s
    converted_coins += ' '
    converted_coins += key.to_s.capitalize
    converted_coins += '<br>'
  end
  erb :default, :locals => {:coins => converted_coins}
end