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
	if orders.length == 0 
		@error = 'Your cart is empty!'
		erb :index
	else
		erb :cart
	end
	
end

post '/lucky' do
	orderdone = Order.new params[:order]
	orderdone.save
	erb 'lucky!'
end

get '/admin' do
	@product = Product.all
	@admin_orders = Order.all

	@array = []								  #taking String from database makes impossible to convert it into array
	@admin_orders.each do |var|				  #I'm splitting string ordelist and pushing it into @array
	 	ohuet = var.orderlist
	  	ohuet = line_split ohuet
	  	@array << ohuet              
	end

	erb :admin
end

get '/test' do
	erb :test
end

def line_split orders
	s1 = orders.split(/,/)
	arr = []
	s1.each do |x|
	    s2 = x.split(/\=/)
		s3 = s2[0].split(/_/)
		id = s3[1]
		cnt = s2[1]
		arr2 = [s3[1], s2[1]]
		arr.push arr2
	end
	return arr
end