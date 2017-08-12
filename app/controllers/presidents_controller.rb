class PresidentsController < ApplicationController

	def new
		@president = President.new
	end

	def update_states
		selected_country = Country.find(params[:country_id])
		@states = selected_country.states
	end
end
