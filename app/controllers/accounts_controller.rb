class AccountsController < ApplicationController
  before_action :set_account, only: [:show, :edit, :update, :destroy]
  respond_to :html, :json

  def index
    @accounts = Account.all
  end

  def show
  end

  def new
    @account = Account.new
  end

  def edit
  end

  def create
    @accounts = Account.all
    @account = Account.create(account_params)
  end

  def update
    @accounts = Account.all
    @account = Account.find(params[:id])
    @account.update_attributes(account_params)
    respond_with @account
  end

  def delete
    @account = Account.find(params[:account_id])
  end

  def destroy
    @accounts = Account.all
    @account = Account.find(params[:id])
    @account.destroy
  end

  #Stripe payment
  def deposit
    @account = Account.find(params[:account_id])
  end

  def payment_success
    
  end

  private
    def set_account
      @account = Account.find(params[:id])
    end

    def account_params
      params.require(:account).permit(:name, :balance_amount)
    end
end
