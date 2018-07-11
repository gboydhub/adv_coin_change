require 'sinatra'
require_relative 'coin_exchange.rb'

enable :sessions

get '/' do
  ''
end

# we want to continue with the coin changer app.
# When we enter the amount of change to process we want to see a pop up box
# that returns current date and time.

# Then on the results page we want to see the returned coins along with the date and time.
# Next we want several new background images on the results page received dynamically from js.
# Next when hovering over results div make a stye change occur via js.