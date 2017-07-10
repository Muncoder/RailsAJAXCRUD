class AddAttributesToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :name, :string
    add_column :employees, :salary, :integer
  end
end
