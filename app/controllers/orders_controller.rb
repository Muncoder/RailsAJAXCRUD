class OrdersController < ApplicationController
	def index
		@orders = Order.all
		@all_status = @orders.map { |o| o.status }
		
		@archived_orders = @orders.select { |o| o.status == 'archived' }
		@closed_active_orders = @orders.reject { |o| o.status == 'archived' }
		#require 'pry'; binding.pry
	end
end