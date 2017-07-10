class EmployeesController < ApplicationController

	def index
		@employees = Employee.all.order("created_at DESC")
	end

	def pay
		@employee = Employee.find(params[:employee_id])
	end

	def process_payment
		@employee = Employee.find(params[:employee_id])

		
	end

end