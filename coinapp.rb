require 'sinatra'
require_relative 'coinkata.rb'

get '/' do 
	erb :get_change
end

post '/change' do 
	amount = params[:amount].to_i
	change = coin_change(amount)
	if Answer = "Your Change is here #{change}"
	end
	erb :get_change
end