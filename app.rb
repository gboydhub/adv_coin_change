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
# we want to continue with the coin changer app.
# When we enter the amount of change to process we want to see a pop up box
# that returns current date and time.

# Then on the results page we want to see the returned coins along with the date and time.
# Next we want several new background images on the results page received dynamically from js.
# Next when hovering over results div make a stye change occur via js.