class PresidentsController < ApplicationController

	def new
		@president = President.new
	end

end
