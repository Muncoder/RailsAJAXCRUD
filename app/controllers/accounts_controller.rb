class AccountsController < ApplicationController
  before_action :set_account, only: [:show, :edit, :update, :destroy]

  # GET /accounts
  # GET /accounts.json
  def index
    @accounts = Account.all
  end

  # GET /accounts/1
  # GET /accounts/1.json
  def show
  end

  # GET /accounts/new
  def new
    @account = Account.new
  end

  # GET /accounts/1/edit
  def edit
  end

  # POST /accounts
  # POST /accounts.json
  def create
    @accounts = Account.all
    @account = Account.create(account_params)
  end

  # PATCH/PUT /accounts/1
  # PATCH/PUT /accounts/1.json
  def update
    @accounts = Account.all
    @account = Account.find(params[:id])
    @account.update_attributes(account_params)
  end

  def delete
    @account = Account.find(params[:account_id])
  end

  # DELETE /accounts/1
  # DELETE /accounts/1.json
  def destroy
    @accounts = Account.all
    @account = Account.find(params[:id])
    @account.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_account
      @account = Account.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def account_params
      params.require(:account).permit(:name)
    end
end
