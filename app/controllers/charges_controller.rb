class ChargesController < ApplicationController
	def new
	end

	def create
	  customer = Stripe::Customer.create(
	    :email => params[:stripeEmail],
	    :source  => params[:stripeToken]
	  )

	  charge = Stripe::Charge.create(
	    :customer    => customer.id,
	    :amount      => params[:deposit_amount],
	    :description => params[:account_name],
	    :currency    => 'usd'
	  )

	  account = Account.find(params[:account_id])

	  updated_amount = (account.balance_amount).to_i + ((params[:deposit_amount]).to_i / 100)
	  #require 'pry', binding.pry

	  account.update_attribute(:balance_amount, updated_amount)
	  #redirect_to payment_success_path, format: 'js'
	  #redirect_to payment_success_path, remote: true

	rescue Stripe::CardError => e
	  flash[:error] = e.message
	  redirect_to new_charge_path
	end

end
