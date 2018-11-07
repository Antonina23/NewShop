#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, "sqlite3:shop.db"

class Client < ActiveRecord::Base
end

get '/' do
	erb "Hello"			
end
