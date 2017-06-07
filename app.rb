#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, "sqlite3:onlineshop.db3"

class Product < ActiveRecord::Base
end

class Order < ActiveRecord::Base
end

get '/' do
	@product = Product.all
	erb :index
end

get '/about' do
	erb :about
end

get '/product/:id' do
	@product = Product.find params[:id]
	erb :product
end

post '/cart' do
	@product = Product.all
	orders = params[:orders_btn]

	@variable = line_split orders

	#
	# @variable.each do |item|
	#  	item[0] = @product.find(item[0]).title
	# end

	erb :cart
end

def line_split orders
	s1 = orders.split(/,/)
	arr = []
	s1.each do |x|
	    s2 = x.split(/\=/)
		s3 = s2[0].split(/_/)
		id = s3[1]
		cnt = s2[1]
		arr2 = [id, cnt]
		arr.push arr2
	end
	arr.delete(1)
	return arr
end