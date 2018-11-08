#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, "sqlite3:shop.db"

class Client < ActiveRecord::Base
end

class Barber < ActiveRecord::Base
end

before do
	@barbers = Barber.all
end

get '/' do
	erb :index			
end

get '/visit' do
	erb :visit
end

post '/visit' do
	@username = params[:username]
	@phone = params[:phone]
	@time = params[:time]
	@barber = params[:barber]
	@color = params[:color]

	erb "<h2>Thank you for appointment!</h2>"
end
