class AddBalanceAmountToAccounts < ActiveRecord::Migration
  def change
    add_column :accounts, :balance_amount, :integer
  end
end
